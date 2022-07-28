#include<assert.h>
#include<bits/stdc++.h>
// You are given a list of two strings, both strings consist of open
// parentheses '(' or close parentheses ')' only.
// Your job is to check if it is possible to concatenate the two strings in
// some order, that the resulting string will be good.
// A string S is considered to be good if and only if all parentheses in S
// are balanced. For example: the string '(())()' is good, while the string
// '())' is not.
// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
// Examples:
// match_parens(['()(', ')']) == 'Yes'
// match_parens([')', ')']) == 'No'
std::string match_parens(std::vector<std::string> lst) {
  std::string s1 = lst[0];
  std::string s2 = lst[1];
  int i = 0;
  int j = 0;
  int count = 0;
  while (i < s1.size() && j < s2.size()) {
    if (s1[i] == '(') {
      count++;
    }
    if (s2[j] == '(') {
      count--;
    }
    if (s1[i] == ')') {
      count--;
    }
    if (s2[j] == ')') {
      count++;
    }
    if (count < 0) {
      return "No";
    }
    i++;
    j++;
  }
  if (count == 0) {
    return "Yes";
  }
  return "No";

}
int main() {
    auto candidate = match_parens;
    assert(candidate((std::vector<std::string>({"()(", ")"}))) == ("Yes"));
    assert(candidate((std::vector<std::string>({")", ")"}))) == ("No"));
    assert(candidate((std::vector<std::string>({"(()(())", "())())"}))) == ("No"));
    assert(candidate((std::vector<std::string>({")())", "(()()("}))) == ("Yes"));
    assert(candidate((std::vector<std::string>({"(())))", "(()())(("}))) == ("Yes"));
    assert(candidate((std::vector<std::string>({"()", "())"}))) == ("No"));
    assert(candidate((std::vector<std::string>({"(()(", "()))()"}))) == ("Yes"));
    assert(candidate((std::vector<std::string>({"((((", "((())"}))) == ("No"));
    assert(candidate((std::vector<std::string>({")(()", "(()("}))) == ("No"));
    assert(candidate((std::vector<std::string>({")(", ")("}))) == ("No"));
    assert(candidate((std::vector<std::string>({"(", ")"}))) == ("Yes"));
    assert(candidate((std::vector<std::string>({")", "("}))) == ("Yes"));
}
