#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
union Union_long_float_std_string{
    long f0;
    float f1;
    std::string f2;    Union_long_float_std_string(long _f0) : f0(_f0) {}
    Union_long_float_std_string(float _f1) : f1(_f1) {}
    Union_long_float_std_string(std::string _f2) : f2(_f2) {}
    ~Union_long_float_std_string() {}
    bool operator==(Union_long_float_std_string u2) {
        return f0 == u2.f0 || f1 == u2.f1 || f2 == u2.f2 ;
    }
};
union Union_long_float_std_string_{
    long f0;
    float f1;
    std::string f2;
     f3;    Union_long_float_std_string_(long _f0) : f0(_f0) {}
    Union_long_float_std_string_(float _f1) : f1(_f1) {}
    Union_long_float_std_string_(std::string _f2) : f2(_f2) {}
    Union_long_float_std_string_( _f3) : f3(_f3) {}
    ~Union_long_float_std_string_() {}
    bool operator==(Union_long_float_std_string_ u2) {
        return f0 == u2.f0 || f1 == u2.f1 || f2 == u2.f2 || f3 == u2.f3 ;
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
Union_long_float_std_string_ compare_one(Union_long_float_std_string a, Union_long_float_std_string b) {
    if(a.f0 == b.f0) {
        return Union_long_float_std_string_(a.f0);
    }
    if(a.f1 == b.f1) {
        return Union_long_float_std_string_(a.f1);
    }
    if(a.f2 == b.f2) {
        return Union_long_float_std_string_(a.f2);
    }
    return Union_long_float_std_string_(a.f0);
}


int main() {
    auto candidate = compare_one;
    assert(candidate((Union_long_float_std_string(1)), (Union_long_float_std_string(2))) == (Union_long_float_std_string_(2)));
    assert(candidate((Union_long_float_std_string(1)), (Union_long_float_std_string(2.5))) == (Union_long_float_std_string_(2.5)));
    assert(candidate((Union_long_float_std_string(2)), (Union_long_float_std_string(3))) == (Union_long_float_std_string_(3)));
    assert(candidate((Union_long_float_std_string(5)), (Union_long_float_std_string(6))) == (Union_long_float_std_string_(6)));
    assert(candidate((Union_long_float_std_string(1)), (Union_long_float_std_string("2,3"))) == (Union_long_float_std_string_("2,3")));
    assert(candidate((Union_long_float_std_string("5,1")), (Union_long_float_std_string("6"))) == (Union_long_float_std_string_("6")));
    assert(candidate((Union_long_float_std_string("1")), (Union_long_float_std_string("2"))) == (Union_long_float_std_string_("2")));
    assert(candidate((Union_long_float_std_string("1")), (Union_long_float_std_string(1))) == (Union_long_float_std_string_({})));
}