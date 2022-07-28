#include<assert.h>
#include<bits/stdc++.h>
// Find the shortest palindrome that begins with a supplied string.
// Algorithm idea is simple:
// - Find the longest postfix of supplied string that is a palindrome.
// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
// >>> make_palindrome('')
// ''
// >>> make_palindrome('cat')
// 'catac'
// >>> make_palindrome('cata')
// 'catac'
std::string make_palindrome(std::string string) {
    std::string result = string;
    std::string reversed = string;
    std::reverse(reversed.begin(), reversed.end());
    std::string::size_type longest_palindrome_suffix = string.size();
    while (longest_palindrome_suffix > 0) {
        std::string::size_type longest_palindrome_prefix = longest_palindrome_suffix;
        while (longest_palindrome_prefix > 0) {
            if (reversed.substr(0, longest_palindrome_prefix) == string.substr(longest_palindrome_suffix, longest_palindrome_prefix)) {
                result = string.substr(0, longest_palindrome_suffix) + reversed.substr(longest_palindrome_suffix, longest_palindrome_prefix) + string;
                return result;
            }
            longest_palindrome_prefix--;
        }
        longest_palindrome_suffix--;
    }
    return result;

}
int main() {
    auto candidate = make_palindrome;
    assert(candidate(("")) == (""));
    assert(candidate(("x")) == ("x"));
    assert(candidate(("xyz")) == ("xyzyx"));
    assert(candidate(("xyx")) == ("xyx"));
    assert(candidate(("jerry")) == ("jerryrrej"));
}
