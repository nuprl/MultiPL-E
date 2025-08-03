Require Import Arith.
Require Import Bool.
Require Import List.
Require Import Ott.ott_list_core.


Import ListNotations.
Section RegExp.
Variable char : Type.

Definition c : Type := char. (*r character *)

Inductive r : Type :=  (*r regexp *)
 | r_zero : r
 | r_unit : r
 | r_char (c5:c)
 | r_plus (r5:r) (r':r)
 | r_times (r5:r) (r':r)
 | r_star (r5:r).

Definition s : Type := list char.
(** definitions *)

(* defns regexp_ins *)
Inductive s_in_regexp_lang : s -> r -> Prop :=    (* defn s_in_regexp_lang *)
 | s_in_regexp_lang_unit : 
     s_in_regexp_lang  []  r_unit
 | s_in_regexp_lang_char : forall (c5:c),
     s_in_regexp_lang  ( c5  :: [])  (r_char c5)
 | s_in_regexp_lang_plus_1 : forall (s5:s) (r1 r2:r),
     s_in_regexp_lang s5 r1 ->
     s_in_regexp_lang s5 (r_plus r1 r2)
 | s_in_regexp_lang_plus_2 : forall (s5:s) (r1 r2:r),
     s_in_regexp_lang s5 r2 ->
     s_in_regexp_lang s5 (r_plus r1 r2)
 | s_in_regexp_lang_times : forall (s5 s':s) (r1 r2:r),
     s_in_regexp_lang s5 r1 ->
     s_in_regexp_lang s' r2 ->
     s_in_regexp_lang  ( s5  ++  s' )  (r_times r1 r2)
 | s_in_regexp_lang_star_1 : forall (r5:r),
     s_in_regexp_lang  []  (r_star r5)
 | s_in_regexp_lang_star_2 : forall (s5 s':s) (r5:r),
     s_in_regexp_lang s5 r5 ->
     s_in_regexp_lang s' (r_star r5) ->
     s_in_regexp_lang  ( s5  ++  s' )  (r_star r5).
(** definitions *)

(* defns regexp_ins_c *)
Inductive s_in_regexp_c_lang : s -> r -> c -> Prop :=    (* defn s_in_regexp_c_lang *)
 | s_in_regexp_c_lang_cs : forall (s5:s) (r5:r) (c5:c),
     s_in_regexp_lang  (  ( c5  :: [])   ++  s5 )  r5 ->
     s_in_regexp_c_lang s5 r5 c5.
End RegExp.



