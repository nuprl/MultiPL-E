
/// In this task, you will be given a string that represents a number of apples and oranges 
/// that are distributed in a basket of fruit this basket contains 
/// apples, oranges, and mango fruits. Given the string that represents the total number of 
/// the oranges and apples and an integer that represent the total number of the fruits 
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 = 8
/// fruit_distribution("0 apples and 1 oranges",3) -> 3 - 0 - 1 = 2
/// fruit_distribution("2 apples and 3 oranges", 100) -> 100 - 2 - 3 = 95
/// fruit_distribution("100 apples and 1 oranges",120) -> 120 - 100 - 1 = 19
func fruit_distribution(s: String, n: Int) -> Int {
    var s = s
    var n = n
    var i = 0
    var j = 0
    var k = 0
    var l = 0
    var m = 0
    var p = 0
    var q = 0
    var r = 0
    var t = 0
    var u = 0
    var v = 0
    var w = 0
    var x = 0
    var y = 0
    var z = 0
    var a = 0
    var b = 0
    var c = 0
    var d = 0
    var e = 0
    var f = 0
    var g = 0
    var h = 0
    var i = 0
    var j = 0
    var k = 0
    var l = 0
    var m = 0
    var n = 0
    var o = 0
    var p = 0
    var q = 0
    var r = 0
    var s = 0
    var t = 0
    var u = 0
    var v = 0
    var w = 0
    var x = 0
    var y = 0
    var z = 0
    var a = 0
    var b = 0
    var c = 0
    var d = 0
    var e = 0
    var f = 0
    var g = 0
    var h = 0
    var i = 0
    var j = 0
    var k = 0
    var l = 0
    var m = 0
    var n = 0
    var o = 0
    var p = 0
    var q = 0
    var r = 0
    var s = 0
    var t = 0
    var u = 0
    var v = 0
    var w = 0
    var x = 0
    var y = 0
    var z = 0
    var a = 0
    var b = 0
    var c = 0
    var d = 0
    var e = 0
    var f = 0
    var g = 0
    var h = 0
    var i = 0
    var j = 0
    var k = 0
    var l = 0
    var m = 0
    var n = 0
   

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 19) == 8)
assert(fruit_distribution(s: "5 apples and 6 oranges", n: 21) == 10)
assert(fruit_distribution(s: "0 apples and 1 oranges", n: 3) == 2)
assert(fruit_distribution(s: "1 apples and 0 oranges", n: 3) == 2)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 100) == 95)
assert(fruit_distribution(s: "2 apples and 3 oranges", n: 5) == 0)
assert(fruit_distribution(s: "1 apples and 100 oranges", n: 120) == 19)