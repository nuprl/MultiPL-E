<?php
// Given a string 'text', return its md5 hash equivalent string.
// If 'text' is an empty string, return None.
// >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
function string_to_md5($text) {
    if (empty($text)) {
        return null;
    }
    return md5($text);
}


function candidate(...$args) {
    return string_to_md5(...$args);
}

function test(): void {
    if (candidate("Hello world") !== "3e25960a79dbc69b674cd4ec67a72c62") { throw new Exception("Test failed!"); }
    if (candidate("") !== null) { throw new Exception("Test failed!"); }
    if (candidate("A B C") !== "0ef78513b0cb8cef12743f5aeb35f888") { throw new Exception("Test failed!"); }
    if (candidate("password") !== "5f4dcc3b5aa765d61d8327deb882cf99") { throw new Exception("Test failed!"); }
}

test();