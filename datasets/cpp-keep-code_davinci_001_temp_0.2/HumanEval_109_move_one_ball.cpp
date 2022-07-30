#include<assert.h>
#include<bits/stdc++.h>
// We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
// numbers in the array will be randomly ordered. Your task is to determine if
// it is possible to get an array sorted in non-decreasing order by performing 
// the following operation on the given array:
// You are allowed to perform right shift operation any number of times.
// One right shift operation means shifting all elements of the array by one
// position in the right direction. The last element of the array will be moved to
// the starting position in the array i.e. 0th index. 
// If it is possible to obtain the sorted array by performing the above operation
// then return True else return False.
// If the given array is empty then return True.
// Note: The given list is guaranteed to have unique elements.
// For Example:
// move_one_ball([3, 4, 5, 1, 2])==>True
// Explanation: By performin 2 right shift operations, non-decreasing order can
// be achieved for the given array.
// move_one_ball([3, 5, 4, 1, 2])==>False
// Explanation:It is not possible to get non-decreasing order for the given
// array by performing any number of right shift operations.
bool move_one_ball(std::vector<long> arr) {
    if(arr.size()==0)
        return true;
    std::vector<long> temp(arr.size());
    for(int i=0;i<arr.size();i++)
        temp[i]=arr[i];
    std::sort(temp.begin(),temp.end());
    for(int i=0;i<arr.size();i++)
        if(arr[i]!=temp[i])
            return false;
    return true;

}
int main() {
    auto candidate = move_one_ball;
    assert(candidate((std::vector<long>({(long)3, (long)4, (long)5, (long)1, (long)2}))) == (true));
    assert(candidate((std::vector<long>({(long)3, (long)5, (long)10, (long)1, (long)2}))) == (true));
    assert(candidate((std::vector<long>({(long)4, (long)3, (long)1, (long)2}))) == (false));
    assert(candidate((std::vector<long>({(long)3, (long)5, (long)4, (long)1, (long)2}))) == (false));
    assert(candidate((std::vector<long>())) == (true));
}
