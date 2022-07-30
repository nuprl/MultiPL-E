
// Create a function which returns the largest index of an element which
// is not greater than or equal to the element immediately preceding it. If
// no such element exists then return -1. The given array will not contain
// duplicate values.
// Examples:
// can_arrange([1,2,4,3,5]) = 3
// can_arrange([1,2,3]) = -1
func can_arrange(arr: [Int]) -> Int {
    var i = 0
    var j = 0
    var k = 0
    var temp = 0
    var temp2 = 0
    var temp3 = 0
    var temp4 = 0
    var temp5 = 0
    var temp6 = 0
    var temp7 = 0
    var temp8 = 0
    var temp9 = 0
    var temp10 = 0
    var temp11 = 0
    var temp12 = 0
    var temp13 = 0
    var temp14 = 0
    var temp15 = 0
    var temp16 = 0
    var temp17 = 0
    var temp18 = 0
    var temp19 = 0
    var temp20 = 0
    var temp21 = 0
    var temp22 = 0
    var temp23 = 0
    var temp24 = 0
    var temp25 = 0
    var temp26 = 0
    var temp27 = 0
    var temp28 = 0
    var temp29 = 0
    var temp30 = 0
    var temp31 = 0
    var temp32 = 0
    var temp33 = 0
    var temp34 = 0
    var temp35 = 0
    var temp36 = 0
    var temp37 = 0
    var temp38 = 0
    var temp39 = 0
    var temp40 = 0
    var temp41 = 0
    var temp42 = 0
    var temp43 = 0
    var temp44 = 0
    var temp45 = 0
    var temp46 = 0
    var temp47 = 0
    var temp48 = 0
    var temp49 = 0
    var temp50 = 0
    var temp51 = 0
    var temp52 = 0
    var temp53 = 0
    var temp54 = 0
    var temp55 = 0
    var temp56 = 0
    var temp57 = 0
    var temp58 = 0
    var temp59 = 0
    var temp60 = 0
    var temp61 = 0
    var temp62 = 0
    var temp63 = 0
    var temp64 = 0
    var temp65 = 0
    var temp66 = 0
    var temp67 = 0
    var temp68 = 0
    var temp69 = 0

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
            
assert(can_arrange(arr: [1, 2, 4, 3, 5]) == 3)
assert(can_arrange(arr: [1, 2, 4, 5]) == -1)
assert(can_arrange(arr: [1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
assert(can_arrange(arr: [4, 8, 5, 7, 3]) == 4)
assert(can_arrange(arr: [] as [Int]) == -1)