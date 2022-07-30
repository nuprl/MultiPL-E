// You're given a list of deposit and withdrawal operations on a bank account that starts with
// zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
// at that point function should return True. Otherwise it should return False.
// >>> below_zero([1, 2, 3])
// False
// >>> below_zero([1, 2, -4, 5])
// True
func below_zero(operations: [Int]) -> Bool {
	fatalError("unimplemented")

}

assert(below_zero(operations: []) == false)
assert(below_zero(operations: [1, 2, -3, 1, 2, -3]) == false)
assert(below_zero(operations: [1, 2, -4, 5, 6]) == true)
assert(below_zero(operations: [1, -1, 2, -2, 5, -5, 4, -4]) == false)
assert(below_zero(operations: [1, -1, 2, -2, 5, -5, 4, -5]) == true)
assert(below_zero(operations: [1, -2, 2, -2, 5, -5, 4, -4]) == true)