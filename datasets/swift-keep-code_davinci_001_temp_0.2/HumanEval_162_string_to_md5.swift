
/// Given a string 'text', return its md5 hash equivalent string.
/// If 'text' is an empty string, return None.
/// >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
func string_to_md5(text: String) -> String? {
    guard !text.isEmpty else { return nil }
    let data = text.data(using: .utf8)!
    let hash = data.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) -> [UInt8] in
        var hash = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
        CC_MD5(bytes.baseAddress, CC_LONG(data.count), &hash)
        return hash
    }
    return hash.map { String(format: "%02x", $0) }.joined()

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