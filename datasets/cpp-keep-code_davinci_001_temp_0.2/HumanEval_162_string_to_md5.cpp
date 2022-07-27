#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given a string 'text', return its md5 hash equivalent string.
// If 'text' is an empty string, return None.
// >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
std::optional<std::string> string_to_md5(std::string text) {
    if(text.empty())
        return std::nullopt;
    std::string md5_hash = "";
    std::string text_to_hash = text;
    std::string md5_hash_string = "";
    std::string md5_hash_string_2 = "";
    std::string md5_hash_string_3 = "";
    std::string md5_hash_string_4 = "";
    std::string md5_hash_string_5 = "";
    std::string md5_hash_string_6 = "";
    std::string md5_hash_string_7 = "";
    std::string md5_hash_string_8 = "";
    std::string md5_hash_string_9 = "";
    std::string md5_hash_string_10 = "";
    std::string md5_hash_string_11 = "";
    std::string md5_hash_string_12 = "";
    std::string md5_hash_string_13 = "";
    std::string md5_hash_string_14 = "";
    std::string md5_hash_string_15 = "";
    std::string md5_hash_string_16 = "";
    std::string md5_hash_string_17 = "";
    std::string md5_hash_string_18 = "";
    std::string md5_hash_string_19 = "";
    std::string md5_hash_string_20 = "";
    std::string md5_hash_string_21 = "";
    std::string md5_hash_string_22 = "";
    std::string md5_hash_string_23 = "";
    std::string md5_hash_string_24 = "";
    std::string md5_hash_string_25 = "";
    std::string md5_hash_string_26 = "";
    std::string md5_hash_string_27 = "";
    std::string md5_hash_string_28 = "";
    std::string md5_hash_string_29


int main() {
    auto candidate = string_to_md5;
    assert(candidate(("Hello world")) == (std::optional<std::string>("3e25960a79dbc69b674cd4ec67a72c62")));
    assert(candidate(("")) == (std::optional<std::string>({})));
    assert(candidate(("A B C")) == (std::optional<std::string>("0ef78513b0cb8cef12743f5aeb35f888")));
    assert(candidate(("password")) == (std::optional<std::string>("5f4dcc3b5aa765d61d8327deb882cf99")));
}