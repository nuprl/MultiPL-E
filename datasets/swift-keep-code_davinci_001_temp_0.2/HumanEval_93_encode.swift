// Write a function that takes a message, and encodes in such a 
// way that it swaps case of all letters, replaces all vowels in 
// the message with the letter that appears 2 places ahead of that 
// vowel in the english alphabet. 
// Assume only letters. 
// Examples:
// >>> encode('test')
// 'TGST'
// >>> encode('This is a message')
// 'tHKS KS C MGSSCGG'
func encode(message: String) -> String {
	fatalError("unimplemented")

}

assert(encode(message: TEST) == tgst)
assert(encode(message: Mudasir) == mWDCSKR)
assert(encode(message: YES) == ygs)
assert(encode(message: This is a message) == tHKS KS C MGSSCGG)
assert(encode(message: I DoNt KnOw WhAt tO WrItE) == k dQnT kNqW wHcT Tq wRkTg)