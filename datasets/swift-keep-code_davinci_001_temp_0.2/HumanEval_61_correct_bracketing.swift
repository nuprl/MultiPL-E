// brackets is a string of "(" and ")".
// return True if every opening bracket has a corresponding closing bracket.
// >>> correct_bracketing("(")
// False
// >>> correct_bracketing("()")
// True
// >>> correct_bracketing("(()())")
// True
// >>> correct_bracketing(")(()")
// False
func correct_bracketing(brackets: String) -> Bool {
	fatalError("unimplemented")

}

assert(correct_bracketing(brackets: ()) == true)
assert(correct_bracketing(brackets: (()())) == true)
assert(correct_bracketing(brackets: ()()(()())()) == true)
assert(correct_bracketing(brackets: ()()((()()())())(()()(()))) == true)
assert(correct_bracketing(brackets: ((()())))) == false)
assert(correct_bracketing(brackets: )(()) == false)
assert(correct_bracketing(brackets: () == false)
assert(correct_bracketing(brackets: (((() == false)
assert(correct_bracketing(brackets: )) == false)
assert(correct_bracketing(brackets: (()) == false)
assert(correct_bracketing(brackets: ()()(()())())(()) == false)
assert(correct_bracketing(brackets: ()()(()())()))()) == false)