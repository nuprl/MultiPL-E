// In this task, you will be given a string that represents a number of apples and oranges 
// that are distributed in a basket of fruit this basket contains 
// apples, oranges, and mango fruits. Given the string that represents the total number of 
// the oranges and apples and an integer that represent the total number of the fruits 
// in the basket return the number of the mango fruits in the basket.
// for examble:
// fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 = 8
// fruit_distribution("0 apples and 1 oranges",3) -> 3 - 0 - 1 = 2
// fruit_distribution("2 apples and 3 oranges", 100) -> 100 - 2 - 3 = 95
// fruit_distribution("100 apples and 1 oranges",120) -> 120 - 100 - 1 = 19
func fruit_distribution(s: String, n: Int) -> Int {
	fatalError("unimplemented")

}

assert(fruit_distribution(s: 5 apples and 6 oranges, n: 19) == 8)
assert(fruit_distribution(s: 5 apples and 6 oranges, n: 21) == 10)
assert(fruit_distribution(s: 0 apples and 1 oranges, n: 3) == 2)
assert(fruit_distribution(s: 1 apples and 0 oranges, n: 3) == 2)
assert(fruit_distribution(s: 2 apples and 3 oranges, n: 100) == 95)
assert(fruit_distribution(s: 2 apples and 3 oranges, n: 5) == 0)
assert(fruit_distribution(s: 1 apples and 100 oranges, n: 120) == 19)