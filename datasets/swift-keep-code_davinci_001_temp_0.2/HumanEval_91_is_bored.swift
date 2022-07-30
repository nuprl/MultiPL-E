
// You'll be given a string of words, and your task is to count the number
// of boredoms. A boredom is a sentence that starts with the word "I".
// Sentences are delimited by '.', '?' or '!'.
// For example:
// >>> is_bored("Hello world")
// 0
// >>> is_bored("The sky is blue. The sun is shining. I love this weather")
// 1
func is_bored(S: String) -> Int {
	fatalError("unimplemented")

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
            
assert(is_bored(S: "Hello world") == 0)
assert(is_bored(S: "Is the sky blue?") == 0)
assert(is_bored(S: "I love It !") == 1)
assert(is_bored(S: "bIt") == 0)
assert(is_bored(S: "I feel good today. I will be productive. will kill It") == 2)
assert(is_bored(S: "You and I are going for a walk") == 0)