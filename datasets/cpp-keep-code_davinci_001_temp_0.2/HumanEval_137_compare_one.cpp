#include<assert.h>
#include<bits/stdc++.h>
union Union_long_float_std_string{
    long f0;
    float f1;
    std::string f2;    Union_long_float_std_string(long _f0) : f0(_f0) {}
    Union_long_float_std_string(float _f1) : f1(_f1) {}
    Union_long_float_std_string(std::string _f2) : f2(_f2) {}
    ~Union_long_float_std_string() {}
    bool operator==(long f) {
        return f0 == f ;
    }    bool operator==(float f) {
        return f1 == f ;
    }    bool operator==(std::string f) {
        return f2 == f ;
    }
};
union Union_long_float_std_string_std_nullopt{
    long f0;
    float f1;
    std::string f2;
    std::nullopt f3;    Union_long_float_std_string_std_nullopt(long _f0) : f0(_f0) {}
    Union_long_float_std_string_std_nullopt(float _f1) : f1(_f1) {}
    Union_long_float_std_string_std_nullopt(std::string _f2) : f2(_f2) {}
    Union_long_float_std_string_std_nullopt(std::nullopt _f3) : f3(_f3) {}
    ~Union_long_float_std_string_std_nullopt() {}
    bool operator==(long f) {
        return f0 == f ;
    }    bool operator==(float f) {
        return f1 == f ;
    }    bool operator==(std::string f) {
        return f2 == f ;
    }    bool operator==(std::nullopt f) {
        return f3 == f ;
    }
};
// Create a function that takes integers, floats, or strings representing
// real numbers, and returns the larger variable in its given variable type.
// Return None if the values are equal.
// Note: If a real number is represented as a string, the floating point might be . or ,
// compare_one(1, 2.5) ➞ 2.5
// compare_one(1, "2,3") ➞ "2,3"
// compare_one("5,1", "6") ➞ "6"
// compare_one("1", 1) ➞ None
Union_long_float_std_string_std_nullopt compare_one(Union_long_float_std_string a, Union_long_float_std_string b) {
    if(a == b) return Union_long_float_std_string_std_nullopt();
    if(a == b.f0) return Union_long_float_std_string_std_nullopt(b.f0);
    if(a == b.f1) return Union_long_float_std_string_std_nullopt(b.f1);
    if(a == b.f2) return Union_long_float_std_string_std_nullopt(b.f2);
    if(a == b.f3) return Union_long_float_std_string_std_nullopt(b.f3);
    return Union_long_float_std_string_std_nullopt();

}
int main() {
    auto candidate = compare_one;
    assert(candidate(1, 2) == 2);
    assert(candidate(1, 2.5) == 2.5);
    assert(candidate(2, 3) == 3);
    assert(candidate(5, 6) == 6);
    assert(candidate(1, "2,3") == "2,3");
    assert(candidate("5,1", "6") == "6");
    assert(candidate("1", "2") == "2");
    assert(candidate("1", 1) == std::nullopt);
}
