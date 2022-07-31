#include<assert.h>
#include<bits/stdc++.h>
// In this problem, you will implement a function that takes two lists of numbers,
// and determines whether it is possible to perform an exchange of elements
// between them to make lst1 a list of only even numbers.
// There is no limit on the number of exchanged elements between lst1 and lst2.
// If it is possible to exchange elements between the lst1 and lst2 to make
// all the elements of lst1 to be even, return "YES".
// Otherwise, return "NO".
// For example:
// exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
// exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
// It is assumed that the input lists will be non-empty.
std::string exchange(std::vector<long> lst1, std::vector<long> lst2) {
  // Write your code here
  std::vector<long>::iterator it1 = lst1.begin();
  std::vector<long>::iterator it2 = lst2.begin();
  while (it1 != lst1.end()) {
    if (*it1 % 2 != 0) {
      it1 = lst1.erase(it1);
    } else {
      it1++;
    }
  }
  while (it2 != lst2.end()) {
    if (*it2 % 2 == 0) {
      it2 = lst2.erase(it2);
    } else {
      it2++;
    }
  }
  if (lst1.size() == lst2.size()) {
    return "YES";
  } else {
    return "NO";
  }

}
int main() {
    auto candidate = exchange;
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4})), (std::vector<long>({(long)1, (long)2, (long)3, (long)4}))) == ("YES"));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4})), (std::vector<long>({(long)1, (long)5, (long)3, (long)4}))) == ("NO"));
    assert(candidate((std::vector<long>({(long)1, (long)2, (long)3, (long)4})), (std::vector<long>({(long)2, (long)1, (long)4, (long)3}))) == ("YES"));
    assert(candidate((std::vector<long>({(long)5, (long)7, (long)3})), (std::vector<long>({(long)2, (long)6, (long)4}))) == ("YES"));
    assert(candidate((std::vector<long>({(long)5, (long)7, (long)3})), (std::vector<long>({(long)2, (long)6, (long)3}))) == ("NO"));
    assert(candidate((std::vector<long>({(long)3, (long)2, (long)6, (long)1, (long)8, (long)9})), (std::vector<long>({(long)3, (long)5, (long)5, (long)1, (long)1, (long)1}))) == ("NO"));
    assert(candidate((std::vector<long>({(long)100, (long)200})), (std::vector<long>({(long)200, (long)200}))) == ("YES"));
}
