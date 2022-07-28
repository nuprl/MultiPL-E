#include<assert.h>
#include<bits/stdc++.h>
// Given a positive integer, obtain its roman numeral equivalent as a string,
// and return it in lowercase.
// Restrictions: 1 <= num <= 1000
// Examples:
// >>> int_to_mini_roman(19) == 'xix'
// >>> int_to_mini_roman(152) == 'clii'
// >>> int_to_mini_roman(426) == 'cdxxvi'
std::string int_to_mini_roman(long number) {
    std::string roman = "";
    while (number > 0) {
        if (number >= 1000) {
            roman += "m";
            number -= 1000;
        } else if (number >= 900) {
            roman += "cm";
            number -= 900;
        } else if (number >= 500) {
            roman += "d";
            number -= 500;
        } else if (number >= 400) {
            roman += "cd";
            number -= 400;
        } else if (number >= 100) {
            roman += "c";
            number -= 100;
        } else if (number >= 90) {
            roman += "xc";
            number -= 90;
        } else if (number >= 50) {
            roman += "l";
            number -= 50;
        } else if (number >= 40) {
            roman += "xl";
            number -= 40;
        } else if (number >= 10) {
            roman += "x";
            number -= 10;
        } else if (number >= 9) {
            roman += "ix";
            number -= 9;
        } else if (number >= 5) {
            roman += "v";
            number -= 5;
        } else if (number >= 4) {
            roman += "iv";
            number -= 4;
        } else if (number >= 1) {
            roman += "i";
            number -= 1;
        }
    }
    return roman;

}
int main() {
    auto candidate = int_to_mini_roman;
    assert(candidate((19)) == ("xix"));
    assert(candidate((152)) == ("clii"));
    assert(candidate((251)) == ("ccli"));
    assert(candidate((426)) == ("cdxxvi"));
    assert(candidate((500)) == ("d"));
    assert(candidate((1)) == ("i"));
    assert(candidate((4)) == ("iv"));
    assert(candidate((43)) == ("xliii"));
    assert(candidate((90)) == ("xc"));
    assert(candidate((94)) == ("xciv"));
    assert(candidate((532)) == ("dxxxii"));
    assert(candidate((900)) == ("cm"));
    assert(candidate((994)) == ("cmxciv"));
    assert(candidate((1000)) == ("m"));
}
