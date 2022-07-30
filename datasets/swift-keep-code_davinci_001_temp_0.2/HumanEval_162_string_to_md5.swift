
// Given a string 'text', return its md5 hash equivalent string.
// If 'text' is an empty string, return None.
// >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
func string_to_md5(text: String) -> String? {
    guard text.characters.count > 0 else {
        return nil
    }
    let str = text.cString(using: String.Encoding.utf8)
    let strLen = CUnsignedInt(text.lengthOfBytes(using: String.Encoding.utf8))
    let digestLen = Int(CC_MD5_DIGEST_LENGTH)
    let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
    CC_MD5(str!, strLen, result)
    let hash = NSMutableString()
    for i in 0..<digestLen {
        hash.appendFormat("%02x", result[i])
    }
    result.deinitialize()
    return String(format: hash as String)

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(string_to_md5(text: "Hello world") == "3e25960a79dbc69b674cd4ec67a72c62")
assert(string_to_md5(text: "") == nil)
assert(string_to_md5(text: "A B C") == "0ef78513b0cb8cef12743f5aeb35f888")
assert(string_to_md5(text: "password") == "5f4dcc3b5aa765d61d8327deb882cf99")