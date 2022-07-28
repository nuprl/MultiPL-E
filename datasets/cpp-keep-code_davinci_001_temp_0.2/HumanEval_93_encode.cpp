#include<assert.h>
#include<bits/stdc++.h>
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
std::string encode(std::string message) {
    std::string result = "";
    for (int i = 0; i < message.length(); i++) {
        if (message[i] >= 'a' && message[i] <= 'z') {
            if (message[i] == 'a') {
                result += 'b';
            } else if (message[i] == 'e') {
                result += 'f';
            } else if (message[i] == 'i') {
                result += 'j';
            } else if (message[i] == 'o') {
                result += 'p';
            } else if (message[i] == 'u') {
                result += 'v';
            } else if (message[i] == 'y') {
                result += 'z';
            } else if (message[i] == 'b') {
                result += 'a';
            } else if (message[i] == 'f') {
                result += 'e';
            } else if (message[i] == 'j') {
                result += 'i';
            } else if (message[i] == 'p') {
                result += 'o';
            } else if (message[i] == 'v') {
                result += 'u';
            } else if (message[i] == 'z') {
                result += 'y';
            } else {
                result += message[i];
            }
        } else {
            result += message[i];
        }
    }
    return result;

}
int main() {
    auto candidate = encode;
    assert(candidate(("TEST")) == ("tgst"));
    assert(candidate(("Mudasir")) == ("mWDCSKR"));
    assert(candidate(("YES")) == ("ygs"));
    assert(candidate(("This is a message")) == ("tHKS KS C MGSSCGG"));
    assert(candidate(("I DoNt KnOw WhAt tO WrItE")) == ("k dQnT kNqW wHcT Tq wRkTg"));
}
