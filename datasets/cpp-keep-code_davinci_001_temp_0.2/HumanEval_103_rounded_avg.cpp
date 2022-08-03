#include<assert.h>
#include<bits/stdc++.h>
union Union_std_string_long{
    std::string f0;
    long f1;    Union_std_string_long(std::string _f0) : f0(_f0) {}
    Union_std_string_long(long _f1) : f1(_f1) {}
    ~Union_std_string_long() {}
    bool operator==(std::string f) {
        return f0 == f ;
    }    bool operator==(long f) {
        return f1 == f ;
    }
};
// You are given two positive integers n and m, and your task is to compute the
// average of the integers from n through m (including n and m). 
// Round the answer to the nearest integer and convert that to binary.
// If n is greater than m, return -1.
// Example:
// rounded_avg(1, 5) => "0b11"
// rounded_avg(7, 5) => -1
// rounded_avg(10, 20) => "0b1111"
// rounded_avg(20, 33) => "0b11010"
Union_std_string_long rounded_avg(long n, long m) {
    if(n > m) return Union_std_string_long("-1");
    long sum = 0;
    for(long i = n; i <= m; i++) sum += i;
    long avg = sum / (m - n + 1);
    std::stringstream ss;
    ss << std::fixed << std::setprecision(0) << avg;
    return Union_std_string_long(ss.str());

}
int main() {
    auto candidate = rounded_avg;
    assert(candidate((1), (5)) == "0b11");
    assert(candidate((7), (13)) == "0b1010");
    assert(candidate((964), (977)) == "0b1111001010");
    assert(candidate((996), (997)) == "0b1111100100");
    assert(candidate((560), (851)) == "0b1011000010");
    assert(candidate((185), (546)) == "0b101101110");
    assert(candidate((362), (496)) == "0b110101101");
    assert(candidate((350), (902)) == "0b1001110010");
    assert(candidate((197), (233)) == "0b11010111");
    assert(candidate((7), (5)) == -1);
    assert(candidate((5), (1)) == -1);
    assert(candidate((5), (5)) == "0b101");
}
