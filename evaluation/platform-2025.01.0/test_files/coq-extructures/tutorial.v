(**

Here is a simple formalization of intuitionistic logic to illustrate the use of
extructures.  We're going to see how we can obtain the basic structural rules of
intuitionistic logic for free simply by representing the contexts of assumptions
as sets rather than lists. First, we import the main libraries.

*)

Require Import Coq.Strings.String. (* For atomic formulas *)
From mathcomp Require Import all_ssreflect.
From deriving Require Import deriving.
From extructures Require Import ord fset fmap.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope fset_scope.

(**

A formula is built up by combining atomic formulas with conjunction, disjunction
and implication.

*)

Notation atomic := string.

Inductive formula : Type :=
| Atom of atomic
| Conj of formula & formula
| Disj of formula & formula
| Impl of formula & formula.

Coercion Atom : atomic >-> formula.

Declare Scope formula_scope.
Bind Scope formula_scope with formula.
Delimit Scope formula_scope with form.

Notation "A ∧ B" := (Conj A B)
  (at level 65, left associativity) : formula_scope.
Notation "A ∨ B" := (Disj A B)
  (at level 67, left associativity) : formula_scope.
Notation "A → B" := (Impl A B)
  (at level 70, right associativity) : formula_scope.

(**

To store formulas in sets, they need to have an order relation. We use the
deriving library to define instances of OrdType for the formula type.

*)

Definition formula_indDef := [indDef for formula_rect].
Canonical formula_indType := IndType formula formula_indDef.
Definition formula_eqMixin := [derive eqMixin for formula].
Canonical formula_eqType := EqType formula formula_eqMixin.
Definition formula_choiceMixin := [derive choiceMixin for formula].
Canonical formula_choiceType := ChoiceType formula formula_choiceMixin.
Definition formula_ordMixin := [derive ordMixin for formula].
Canonical formula_ordType := OrdType formula formula_ordMixin.

Notation context := {fset formula}.

Implicit Types X Y Z : atomic.
Implicit Types A B C : formula.
Implicit Types Γ Δ : context.

(**

Here is the definition of the entailment relation.  Γ ⊢ A means that the formula
A holds assuming the hypotheses in Γ.  Note the use of the set insertion
operation A |: Γ to extend the context in ImplI.

*)

Reserved Notation "Γ ⊢ A" (at level 80).

Inductive entails : {fset formula} -> formula -> Prop :=
| Ax Γ A :
  A \in Γ ->
  Γ ⊢ A

| ConjI Γ A B :
  Γ ⊢ A ->
  Γ ⊢ B ->
  Γ ⊢ A ∧ B

| ConjEL Γ A B :
  Γ ⊢ A ∧ B ->
  Γ ⊢ A

| ConjER Γ A B :
  Γ ⊢ A ∧ B ->
  Γ ⊢ B

| DisjIL Γ A B :
  Γ ⊢ A ->
  Γ ⊢ A ∨ B

| DisjIR Γ A B :
  Γ ⊢ B ->
  Γ ⊢ A ∨ B

| DisjE Γ A B C :
  Γ ⊢ A ∨ B ->
  Γ ⊢ A → C ->
  Γ ⊢ B → C ->
  Γ ⊢ C

| ImplI Γ A B :
  A |: Γ ⊢ B ->
  Γ ⊢ A → B

| ImplE Γ A B :
  Γ ⊢ A → B ->
  Γ ⊢ A ->
  Γ ⊢ B

where "Γ ⊢ A" := (entails Γ A).

#[local] Hint Constructors entails : core.

(**

The entailment relation satisfies the structural rules of contraction, exchange
and weakening.  The proof of weakening follows by induction on the entailment
derivation. Contraction and weakening, on the other hand, can be proved with
basic properties of the set union operator: idempotence and commutativity.  If
contexts were represented as lists, these properties would fail, and the proofs
would need induction too.

*)

Lemma contraction Γ A : Γ :|: Γ ⊢ A -> Γ ⊢ A.
Proof. by rewrite fsetUid. Qed.

Lemma exchange Γ Δ A : Γ :|: Δ ⊢ A -> Δ :|: Γ ⊢ A.
Proof. by rewrite fsetUC. Qed.

Lemma weakening Γ Δ A : Γ ⊢ A -> Γ :|: Δ ⊢ A.
Proof.
elim: Γ A /; eauto 2.
- move=> Γ A Ain; have: A \in Γ :|: Δ by rewrite in_fsetU Ain.
  by eauto.
- by move=> Γ A B C; rewrite -!fsetUA; eauto.
Qed.

(**

Next, let us consider the soundness of the logic.  Given a valuation ρ, a finite
map from atomic formulas to propositions, each formula A corresponds to a
proposition `F⟦A⟧^ρ.

*)

Reserved Notation "`F⟦ A ⟧^" (format "`F⟦ A ⟧^").

Implicit Types ρ : {fmap string -> Prop}.

Fixpoint formula_den A ρ : Prop :=
  match A with
  | Atom a => if ρ a is Some P then P else False
  | A ∧ B => `F⟦A⟧^ρ /\ `F⟦B⟧^ρ
  | A ∨ B => `F⟦A⟧^ρ \/ `F⟦B⟧^ρ
  | A → B => `F⟦A⟧^ρ -> `F⟦B⟧^ρ
  end%form

where "`F⟦ A ⟧^" := (formula_den A).

(**

Valuations are extensional: if ρ1 and ρ2 agree on each atomic formula, noted ρ1
=1 ρ2, then ρ1 = ρ2.  The extructures lemma eq_fmap allows us to convert back
and forth between ρ1 =1 ρ2 and ρ1 = ρ2.  It provides a short proof of the
following result, which says that the interpretation of a formula A depends only
on the interpretation of atomic formulas.

*)

Lemma eq_formula_den A ρ1 ρ2 : ρ1 =1 ρ2 -> `F⟦A⟧^ρ1 = `F⟦A⟧^ρ2.
Proof. by move/eq_fmap=> ->. Qed.

(**

If we only consider atomic formulas that actually appear in A, we can strengthen
this result a little bit.  However, the proof becomes more involved.

*)

Fixpoint atoms A : {fset atomic} :=
  match A with
  | Atom X => fset1 X
  | A ∧ B => atoms A :|: atoms B
  | A ∨ B => atoms A :|: atoms B
  | A → B => atoms A :|: atoms B
  end%form.

Lemma in_eq_formula_den A ρ1 ρ2 :
  {in atoms A, ρ1 =1 ρ2} -> `F⟦A⟧^ρ1 = `F⟦A⟧^ρ2.
Proof.
move: {-1}(atoms A) (fsubsetxx (atoms A)) => Xs.
by elim: A => /= [X|A IHA B IHB|A IHA B IHB|A IHA B IHB] sub ρ12;
do ?[move: sub; rewrite fsubUset; case/andP => ??];
rewrite ?ρ12 // ?IHA ?IHB // -fsub1set.
Qed.

(**

We lift the interpretation of formulas to contexts.  Sets in extructures coerce
to sequences, which allows us to write the following definition.

*)


Definition context_den Γ ρ := foldr and True [seq `F⟦A⟧^ρ | A <- Γ].

Notation "`C⟦ Γ ⟧^" := (context_den Γ) (format "`C⟦ Γ ⟧^").

(**

This definition is equivalent to the following one, which is easier to use to
prove soundness.

*)

Lemma context_denP Γ ρ : `C⟦Γ⟧^ρ <-> {in Γ, forall A, `F⟦A⟧^ρ}.
Proof.
rewrite -[mem Γ]/(mem (val Γ)) /context_den /=.
elim: (val Γ) => /= [|A {}Γ ->]; split => // [[HA HΓ] B|].
  rewrite inE; case/orP=> [/eqP -> //|]; exact: HΓ.
by move=> HΓ; split=> [|B Bin]; apply: HΓ; rewrite inE ?eqxx // Bin orbT.
Qed.

(**

Once again, we can prove two extensionality lemmas for the interpretation of
contexts.  The first one follows by eq_fmap, whereas the second one requires a
more detailed argument.

*)

Lemma eq_context_den Γ ρ1 ρ2 : ρ1 =1 ρ2 -> `C⟦Γ⟧^ρ1 = `C⟦Γ⟧^ρ2.
Proof. by move/eq_fmap=> ->. Qed.

Definition ctx_atoms Γ : {fset string} :=
  \bigcup_(A <- Γ) atoms A.

Lemma in_eq_context_den Γ ρ1 ρ2 :
  {in ctx_atoms Γ, ρ1 =1 ρ2} -> `C⟦Γ⟧^ρ1 = `C⟦Γ⟧^ρ2.
Proof.
move: {-1}(ctx_atoms Γ) (fsubsetxx (ctx_atoms Γ)) => Xs.
rewrite /ctx_atoms /context_den.
elim: (val Γ) => //= A {}Γ IH; rewrite big_cons fsubUset.
case/andP=> subA subΓ ρ12; rewrite IH //.
suff /in_eq_formula_den -> : {in atoms A, ρ1 =1 ρ2} by [].
move=> X Xin; apply: ρ12; exact: (fsubsetP subA).
Qed.

(**

We can now state the soundness result of the logic.

*)

Lemma soundness Γ A : Γ ⊢ A -> forall ρ, `C⟦Γ⟧^ρ -> `F⟦A⟧^ρ.
Proof.
move=> ΓA ρ /context_denP; elim: Γ A / ΓA => //=; eauto.
- by move=> ??? _ IH HΓ; case: IH.
- by move=> ??? _ IH HΓ; case: IH.
- by move=> ???? _ IHor _ IH1 _ IH2 HΓ; case: IHor; eauto.
- move=> ??? _ IH HΓ HA; apply: IH.
  move=> C /fsetU1P [-> //|]; exact: HΓ.
Qed.
