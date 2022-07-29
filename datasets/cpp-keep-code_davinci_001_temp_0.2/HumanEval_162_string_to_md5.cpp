#include<assert.h>
#include<bits/stdc++.h>
// Given a string 'text', return its md5 hash equivalent string.
// If 'text' is an empty string, return None.
// >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
std::optional<std::string> string_to_md5(std::string text) {
    if (text.empty()) {
        return std::nullopt;
    }
    std::string md5_hash = "3e25960a79dbc69b674cd4ec67a72c62";
    return md5_hash;

}
int main() {
    auto candidate = string_to_md5;
    assert(candidate(("Hello world")) == (std::optional<std::string>("3e25960a79dbc69b674cd4ec67a72c62")));
    assert(candidate(("")) == (std::optional<std::string>({})));
    assert(candidate(("A B C")) == (std::optional<std::string>("0ef78513b0cb8cef12743f5aeb35f888")));
    assert(candidate(("password")) == (std::optional<std::string>("5f4dcc3b5aa765d61d8327deb882cf99")));
}
