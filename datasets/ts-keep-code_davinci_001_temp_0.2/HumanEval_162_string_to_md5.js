//Given a string 'text', return its md5 hash equivalent string.
// If 'text' is an empty string, return None.
// >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
function string_to_md5(text) {
    if (text.length === 0) {
        return undefined;
    }
    var md5 = crypto.createHash('md5');
    md5.update(text);
    return md5.digest('hex');
}
var assert = require('node:assert');
function test() {
    var candidate = string_to_md5;
    assert.deepEqual(candidate("Hello world"), "3e25960a79dbc69b674cd4ec67a72c62");
    assert.deepEqual(candidate(""), null);
    assert.deepEqual(candidate("A B C"), "0ef78513b0cb8cef12743f5aeb35f888");
    assert.deepEqual(candidate("password"), "5f4dcc3b5aa765d61d8327deb882cf99");
}
test();
