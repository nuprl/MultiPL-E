
/// I think we all remember that feeling when the result of some long-awaited
/// event is finally known. The feelings and thoughts you have at that moment are
/// definitely worth noting down and comparing.
/// Your task is to determine if a person correctly guessed the results of a number of matches.
/// You are given two arrays of scores and guesses of equal length, where each index shows a match. 
/// Return an array of the same length denoting how far off each guess was. If they have guessed correctly,
/// the value is 0, and if not, the value is the absolute difference between the guess and the score.
/// example:
/// compare([1,2,3,4,5,1],[1,2,3,4,2,-2]) -> [0,0,0,0,3,3]
/// compare([0,5,0,0,0,4],[4,1,1,0,0,-2]) -> [4,4,1,0,0,6]
func compare(game: [Int], guess: [Int]) -> [Int] {
    var result = [Int]()
    for i in 0..<game.count {
        result.append(abs(game[i] - guess[i]))
    }
    return result

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
            
assert(compare(game: [1, 2, 3, 4, 5, 1], guess: [1, 2, 3, 4, 2, -2]) == [0, 0, 0, 0, 3, 3])
assert(compare(game: [0, 0, 0, 0, 0, 0], guess: [0, 0, 0, 0, 0, 0]) == [0, 0, 0, 0, 0, 0])
assert(compare(game: [1, 2, 3], guess: [-1, -2, -3]) == [2, 4, 6])
assert(compare(game: [1, 2, 3, 5], guess: [-1, 2, 3, 4]) == [2, 0, 0, 1])