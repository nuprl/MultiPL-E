using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a string 'text', return its md5 hash equivalent string.
    // If 'text' is an empty string, return None.
    // >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
    public static string StringToMd5(string text) {
        if (text == "") {
            return null;
        }
        MD5 md5 = MD5.Create();
        byte[] inputBytes = Encoding.ASCII.GetBytes(text);
        byte[] hash = md5.ComputeHash(inputBytes);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < hash.Length; i++) {
            sb.Append(hash[i].ToString("X2"));
        }
        return sb.ToString();

    }
    public static void Main(string[] args) {
    Debug.Assert(StringToMd5(("Hello world")).Equals(("3e25960a79dbc69b674cd4ec67a72c62")));
    Debug.Assert(StringToMd5(("")).Equals(null));
    Debug.Assert(StringToMd5(("A B C")).Equals(("0ef78513b0cb8cef12743f5aeb35f888")));
    Debug.Assert(StringToMd5(("password")).Equals(("5f4dcc3b5aa765d61d8327deb882cf99")));
    }

}
