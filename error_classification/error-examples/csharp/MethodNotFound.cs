# ---- HumanEval_150_x_or_y --- completion 31 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // A simple program which should return the value of x if n is 
    // a prime number and should return the value of y otherwise.
    // Examples:
    // >>> XOrY((7L), (34L), (12L))
    // (34L)
    // >>> XOrY((15L), (8L), (5L))
    // (5L)
    public static long XOrY(long n, long x, long y) {
        return n.IsPrime() ? x : y;
    }
    public static void Main(string[] args) {
    Debug.Assert(XOrY((7L), (34L), (12L)) == (34L));
    Debug.Assert(XOrY((15L), (8L), (5L)) == (5L));
    Debug.Assert(XOrY((3L), (33L), (5212L)) == (33L));
    Debug.Assert(XOrY((1259L), (3L), (52L)) == (3L));
    Debug.Assert(XOrY((7919L), (-1L), (12L)) == (-1L));
    Debug.Assert(XOrY((3609L), (1245L), (583L)) == (583L));
    Debug.Assert(XOrY((91L), (56L), (129L)) == (129L));
    Debug.Assert(XOrY((6L), (34L), (1234L)) == (1234L));
    Debug.Assert(XOrY((1L), (2L), (0L)) == (0L));
    Debug.Assert(XOrY((2L), (2L), (0L)) == (2L));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmprl6g09k8.cs(17,18): error CS1061: 'long' does not contain a definition for 'IsPrime' and no accessible extension method 'IsPrime' accepting a first argument of type 'long' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_82_prime_length --- completion 7 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that takes a string and returns true if the string
    // length is a prime number or false otherwise
    // Examples
    // >>> PrimeLength(("Hello"))
    // (true)
    // >>> PrimeLength(("abcdcba"))
    // (true)
    // >>> PrimeLength(("kittens"))
    // (true)
    // >>> PrimeLength(("orange"))
    // (false)
    public static bool PrimeLength(string str) {
        return new BigInteger(str.Length).IsProbablePrime(100);
    }
    public static void Main(string[] args) {
    Debug.Assert(PrimeLength(("Hello")) == (true));
    Debug.Assert(PrimeLength(("abcdcba")) == (true));
    Debug.Assert(PrimeLength(("kittens")) == (true));
    Debug.Assert(PrimeLength(("orange")) == (false));
    Debug.Assert(PrimeLength(("wow")) == (true));
    Debug.Assert(PrimeLength(("world")) == (true));
    Debug.Assert(PrimeLength(("MadaM")) == (true));
    Debug.Assert(PrimeLength(("Wow")) == (true));
    Debug.Assert(PrimeLength(("")) == (false));
    Debug.Assert(PrimeLength(("HI")) == (true));
    Debug.Assert(PrimeLength(("go")) == (true));
    Debug.Assert(PrimeLength(("gogo")) == (false));
    Debug.Assert(PrimeLength(("aaaaaaaaaaaaaaa")) == (false));
    Debug.Assert(PrimeLength(("Madam")) == (true));
    Debug.Assert(PrimeLength(("M")) == (false));
    Debug.Assert(PrimeLength(("0")) == (false));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpus4_5m7y.cs(21,43): error CS1061: 'BigInteger' does not contain a definition for 'IsProbablePrime' and no accessible extension method 'IsProbablePrime' accepting a first argument of type 'BigInteger' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_82_prime_length --- completion 16 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that takes a string and returns true if the string
    // length is a prime number or false otherwise
    // Examples
    // >>> PrimeLength(("Hello"))
    // (true)
    // >>> PrimeLength(("abcdcba"))
    // (true)
    // >>> PrimeLength(("kittens"))
    // (true)
    // >>> PrimeLength(("orange"))
    // (false)
    public static bool PrimeLength(string str) {
        return str.Length.IsPrime();
    }
    public static void Main(string[] args) {
    Debug.Assert(PrimeLength(("Hello")) == (true));
    Debug.Assert(PrimeLength(("abcdcba")) == (true));
    Debug.Assert(PrimeLength(("kittens")) == (true));
    Debug.Assert(PrimeLength(("orange")) == (false));
    Debug.Assert(PrimeLength(("wow")) == (true));
    Debug.Assert(PrimeLength(("world")) == (true));
    Debug.Assert(PrimeLength(("MadaM")) == (true));
    Debug.Assert(PrimeLength(("Wow")) == (true));
    Debug.Assert(PrimeLength(("")) == (false));
    Debug.Assert(PrimeLength(("HI")) == (true));
    Debug.Assert(PrimeLength(("go")) == (true));
    Debug.Assert(PrimeLength(("gogo")) == (false));
    Debug.Assert(PrimeLength(("aaaaaaaaaaaaaaa")) == (false));
    Debug.Assert(PrimeLength(("Madam")) == (true));
    Debug.Assert(PrimeLength(("M")) == (false));
    Debug.Assert(PrimeLength(("0")) == (false));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp_ui0g0zu.cs(21,27): error CS1061: 'int' does not contain a definition for 'IsPrime' and no accessible extension method 'IsPrime' accepting a first argument of type 'int' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_82_prime_length --- completion 25 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that takes a string and returns true if the string
    // length is a prime number or false otherwise
    // Examples
    // >>> PrimeLength(("Hello"))
    // (true)
    // >>> PrimeLength(("abcdcba"))
    // (true)
    // >>> PrimeLength(("kittens"))
    // (true)
    // >>> PrimeLength(("orange"))
    // (false)
    public static bool PrimeLength(string str) {
        return str.Length.IsPrime();
    }
    public static void Main(string[] args) {
    Debug.Assert(PrimeLength(("Hello")) == (true));
    Debug.Assert(PrimeLength(("abcdcba")) == (true));
    Debug.Assert(PrimeLength(("kittens")) == (true));
    Debug.Assert(PrimeLength(("orange")) == (false));
    Debug.Assert(PrimeLength(("wow")) == (true));
    Debug.Assert(PrimeLength(("world")) == (true));
    Debug.Assert(PrimeLength(("MadaM")) == (true));
    Debug.Assert(PrimeLength(("Wow")) == (true));
    Debug.Assert(PrimeLength(("")) == (false));
    Debug.Assert(PrimeLength(("HI")) == (true));
    Debug.Assert(PrimeLength(("go")) == (true));
    Debug.Assert(PrimeLength(("gogo")) == (false));
    Debug.Assert(PrimeLength(("aaaaaaaaaaaaaaa")) == (false));
    Debug.Assert(PrimeLength(("Madam")) == (true));
    Debug.Assert(PrimeLength(("M")) == (false));
    Debug.Assert(PrimeLength(("0")) == (false));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp_ui0g0zu.cs(21,27): error CS1061: 'int' does not contain a definition for 'IsPrime' and no accessible extension method 'IsPrime' accepting a first argument of type 'int' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_82_prime_length --- completion 39 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that takes a string and returns true if the string
    // length is a prime number or false otherwise
    // Examples
    // >>> PrimeLength(("Hello"))
    // (true)
    // >>> PrimeLength(("abcdcba"))
    // (true)
    // >>> PrimeLength(("kittens"))
    // (true)
    // >>> PrimeLength(("orange"))
    // (false)
    public static bool PrimeLength(string str) {
        return str.Length.IsPrime();
    }
    public static void Main(string[] args) {
    Debug.Assert(PrimeLength(("Hello")) == (true));
    Debug.Assert(PrimeLength(("abcdcba")) == (true));
    Debug.Assert(PrimeLength(("kittens")) == (true));
    Debug.Assert(PrimeLength(("orange")) == (false));
    Debug.Assert(PrimeLength(("wow")) == (true));
    Debug.Assert(PrimeLength(("world")) == (true));
    Debug.Assert(PrimeLength(("MadaM")) == (true));
    Debug.Assert(PrimeLength(("Wow")) == (true));
    Debug.Assert(PrimeLength(("")) == (false));
    Debug.Assert(PrimeLength(("HI")) == (true));
    Debug.Assert(PrimeLength(("go")) == (true));
    Debug.Assert(PrimeLength(("gogo")) == (false));
    Debug.Assert(PrimeLength(("aaaaaaaaaaaaaaa")) == (false));
    Debug.Assert(PrimeLength(("Madam")) == (true));
    Debug.Assert(PrimeLength(("M")) == (false));
    Debug.Assert(PrimeLength(("0")) == (false));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp_ui0g0zu.cs(21,27): error CS1061: 'int' does not contain a definition for 'IsPrime' and no accessible extension method 'IsPrime' accepting a first argument of type 'int' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_82_prime_length --- completion 43 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Write a function that takes a string and returns true if the string
    // length is a prime number or false otherwise
    // Examples
    // >>> PrimeLength(("Hello"))
    // (true)
    // >>> PrimeLength(("abcdcba"))
    // (true)
    // >>> PrimeLength(("kittens"))
    // (true)
    // >>> PrimeLength(("orange"))
    // (false)
    public static bool PrimeLength(string str) {
        return str.Length.IsPrime();
    }
    public static void Main(string[] args) {
    Debug.Assert(PrimeLength(("Hello")) == (true));
    Debug.Assert(PrimeLength(("abcdcba")) == (true));
    Debug.Assert(PrimeLength(("kittens")) == (true));
    Debug.Assert(PrimeLength(("orange")) == (false));
    Debug.Assert(PrimeLength(("wow")) == (true));
    Debug.Assert(PrimeLength(("world")) == (true));
    Debug.Assert(PrimeLength(("MadaM")) == (true));
    Debug.Assert(PrimeLength(("Wow")) == (true));
    Debug.Assert(PrimeLength(("")) == (false));
    Debug.Assert(PrimeLength(("HI")) == (true));
    Debug.Assert(PrimeLength(("go")) == (true));
    Debug.Assert(PrimeLength(("gogo")) == (false));
    Debug.Assert(PrimeLength(("aaaaaaaaaaaaaaa")) == (false));
    Debug.Assert(PrimeLength(("Madam")) == (true));
    Debug.Assert(PrimeLength(("M")) == (false));
    Debug.Assert(PrimeLength(("0")) == (false));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp_ui0g0zu.cs(21,27): error CS1061: 'int' does not contain a definition for 'IsPrime' and no accessible extension method 'IsPrime' accepting a first argument of type 'int' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_10_make_palindrome --- completion 38 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Find the shortest palindrome that begins with a supplied string.
    // Algorithm idea is simple:
    // - Find the longest postfix of supplied string that is a palindrome.
    // - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
    // >>> MakePalindrome((""))
    // ("")
    // >>> MakePalindrome(("cat"))
    // ("catac")
    // >>> MakePalindrome(("cata"))
    // ("catac")
    public static string MakePalindrome(string str) {
        var sb = new StringBuilder(str);
        var sb2 = new StringBuilder(str);
        sb2.Reverse();
        var str2 = sb2.ToString();
        var n = str.Length;
        var z = new int[2 * n + 1];
        z[0] = 0;
        var l = 0;
        var r = 0;
        for (var i = 1; i < 2 * n + 1; i++) {
            if (i > r) {
                var j = 0;
                while (i + j < 2 * n + 1 && str2[j] == str[i + j - n - 1]) {
                    j++;
                }
                z[i] = j;
                l = i;
                r = i + j - 1;
            } else {
                var k = i - l;
                if (z[k] < r - i + 1) {
                    z[i] = z[k];
                } else {
                    var j = 1;
                    while (r + j < 2 * n + 1 && str2[r + j - n] == str[r + j - n]) {
                        j++;
                    }
                    z[i] = r - i + j;
                    l = i;
                    r = r + j - 1;
                }
            }
        }
        var max = 0;
        var maxi = 0;
        for (var i = 0; i < 2 * n + 1; i++) {
            if (z[i] > max) {
                max = z[i];
                maxi = i;
            }
        }
        sb.Append(str2.Substring(0, n - max));
        return sb.ToString();
    }
    public static void Main(string[] args) {
    Debug.Assert(MakePalindrome(("")).Equals(("")));
    Debug.Assert(MakePalindrome(("x")).Equals(("x")));
    Debug.Assert(MakePalindrome(("xyz")).Equals(("xyzyx")));
    Debug.Assert(MakePalindrome(("xyx")).Equals(("xyx")));
    Debug.Assert(MakePalindrome(("jerry")).Equals(("jerryrrej")));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpl2h_cs0t.cs(22,13): error CS1061: 'StringBuilder' does not contain a definition for 'Reverse' and no accessible extension method 'Reverse' accepting a first argument of type 'StringBuilder' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_161_solve --- completion 2 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // You are given a string s.
    // if s[i] is a letter, reverse its case from lower to upper or vise versa, 
    // otherwise keep it as it is.
    // If the string contains no letters, reverse the string.
    // The function should return the resulted string.
    // Examples
    // >>> Solve(("1234"))
    // ("4321")
    // >>> Solve(("ab"))
    // ("AB")
    // >>> Solve(("#a@C"))
    // ("#A@c")
    public static string Solve(string s) {
        var sb = new StringBuilder();
        bool hasLetters = false;
        for (int i = 0; i < s.Length; i++) {
            if (char.IsLetter(s[i])) {
                hasLetters = true;
                sb.Append(char.IsUpper(s[i]) ? char.ToLower(s[i]) : char.ToUpper(s[i]));
            } else {
                sb.Append(s[i]);
            }
        }
        if (!hasLetters) {
            sb.Reverse();
        }
        return sb.ToString();
    }
    public static void Main(string[] args) {
    Debug.Assert(Solve(("AsDf")).Equals(("aSdF")));
    Debug.Assert(Solve(("1234")).Equals(("4321")));
    Debug.Assert(Solve(("ab")).Equals(("AB")));
    Debug.Assert(Solve(("#a@C")).Equals(("#A@c")));
    Debug.Assert(Solve(("#AsdfW^45")).Equals(("#aSDFw^45")));
    Debug.Assert(Solve(("#6@2")).Equals(("2@6#")));
    Debug.Assert(Solve(("#$a^D")).Equals(("#$A^d")));
    Debug.Assert(Solve(("#ccc")).Equals(("#CCC")));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpkt0l5fvz.cs(33,16): error CS1061: 'StringBuilder' does not contain a definition for 'Reverse' and no accessible extension method 'Reverse' accepting a first argument of type 'StringBuilder' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_39_prime_fib --- completion 57 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // prime_fib returns n-th number that is a Fibonacci number and it's also prime.
    // >>> PrimeFib((1L))
    // (2L)
    // >>> PrimeFib((2L))
    // (3L)
    // >>> PrimeFib((3L))
    // (5L)
    // >>> PrimeFib((4L))
    // (13L)
    // >>> PrimeFib((5L))
    // (89L)
    public static long PrimeFib(long n) {
        long f1 = 2;
        long f2 = 3;
        long f3 = 5;
        long i = 3;
        while (i < n) {
            f1 = f2;
            f2 = f3;
            f3 = f1 + f2;
            if (f3.IsPrime()) {
                i += 1;
            }
        }
        return f3;
    }
    public static void Main(string[] args) {
    Debug.Assert(PrimeFib((1L)) == (2L));
    Debug.Assert(PrimeFib((2L)) == (3L));
    Debug.Assert(PrimeFib((3L)) == (5L));
    Debug.Assert(PrimeFib((4L)) == (13L));
    Debug.Assert(PrimeFib((5L)) == (89L));
    Debug.Assert(PrimeFib((6L)) == (233L));
    Debug.Assert(PrimeFib((7L)) == (1597L));
    Debug.Assert(PrimeFib((8L)) == (28657L));
    Debug.Assert(PrimeFib((9L)) == (514229L));
    Debug.Assert(PrimeFib((10L)) == (433494437L));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpee2vdwo2.cs(29,20): error CS1061: 'long' does not contain a definition for 'IsPrime' and no accessible extension method 'IsPrime' accepting a first argument of type 'long' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_39_prime_fib --- completion 140 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // prime_fib returns n-th number that is a Fibonacci number and it's also prime.
    // >>> PrimeFib((1L))
    // (2L)
    // >>> PrimeFib((2L))
    // (3L)
    // >>> PrimeFib((3L))
    // (5L)
    // >>> PrimeFib((4L))
    // (13L)
    // >>> PrimeFib((5L))
    // (89L)
    public static long PrimeFib(long n) {
        long a = 2;
        long b = 3;
        long c = 5;
        long i = 3;
        while (i < n) {
            a = b;
            b = c;
            c = a + b;
            if (c.IsPrime()) {
                i += 1;
            }
        }
        return c;
    }
    public static void Main(string[] args) {
    Debug.Assert(PrimeFib((1L)) == (2L));
    Debug.Assert(PrimeFib((2L)) == (3L));
    Debug.Assert(PrimeFib((3L)) == (5L));
    Debug.Assert(PrimeFib((4L)) == (13L));
    Debug.Assert(PrimeFib((5L)) == (89L));
    Debug.Assert(PrimeFib((6L)) == (233L));
    Debug.Assert(PrimeFib((7L)) == (1597L));
    Debug.Assert(PrimeFib((8L)) == (28657L));
    Debug.Assert(PrimeFib((9L)) == (514229L));
    Debug.Assert(PrimeFib((10L)) == (433494437L));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpoetaqpoe.cs(29,19): error CS1061: 'long' does not contain a definition for 'IsPrime' and no accessible extension method 'IsPrime' accepting a first argument of type 'long' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_39_prime_fib --- completion 142 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // prime_fib returns n-th number that is a Fibonacci number and it's also prime.
    // >>> PrimeFib((1L))
    // (2L)
    // >>> PrimeFib((2L))
    // (3L)
    // >>> PrimeFib((3L))
    // (5L)
    // >>> PrimeFib((4L))
    // (13L)
    // >>> PrimeFib((5L))
    // (89L)
    public static long PrimeFib(long n) {
        long a = 2;
        long b = 3;
        long c = 5;
        long i = 3;
        while (i < n) {
            a = b;
            b = c;
            c = a + b;
            if (c.IsPrime()) {
                i += 1;
            }
        }
        return c;
    }
    public static void Main(string[] args) {
    Debug.Assert(PrimeFib((1L)) == (2L));
    Debug.Assert(PrimeFib((2L)) == (3L));
    Debug.Assert(PrimeFib((3L)) == (5L));
    Debug.Assert(PrimeFib((4L)) == (13L));
    Debug.Assert(PrimeFib((5L)) == (89L));
    Debug.Assert(PrimeFib((6L)) == (233L));
    Debug.Assert(PrimeFib((7L)) == (1597L));
    Debug.Assert(PrimeFib((8L)) == (28657L));
    Debug.Assert(PrimeFib((9L)) == (514229L));
    Debug.Assert(PrimeFib((10L)) == (433494437L));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpoetaqpoe.cs(29,19): error CS1061: 'long' does not contain a definition for 'IsPrime' and no accessible extension method 'IsPrime' accepting a first argument of type 'long' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_49_modp --- completion 2 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return 2^n modulo p (be aware of numerics).
    // >>> Modp((3L), (5L))
    // (3L)
    // >>> Modp((1101L), (101L))
    // (2L)
    // >>> Modp((0L), (101L))
    // (1L)
    // >>> Modp((3L), (11L))
    // (8L)
    // >>> Modp((100L), (101L))
    // (1L)
    public static long Modp(long n, long p) {
        return BigInteger.ModPow(2, n, p).ToInt64();
    }
    public static void Main(string[] args) {
    Debug.Assert(Modp((3L), (5L)) == (3L));
    Debug.Assert(Modp((1101L), (101L)) == (2L));
    Debug.Assert(Modp((0L), (101L)) == (1L));
    Debug.Assert(Modp((3L), (11L)) == (8L));
    Debug.Assert(Modp((100L), (101L)) == (1L));
    Debug.Assert(Modp((30L), (5L)) == (4L));
    Debug.Assert(Modp((31L), (5L)) == (3L));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmpipz1a5d4.cs(21,43): error CS1061: 'BigInteger' does not contain a definition for 'ToInt64' and no accessible extension method 'ToInt64' accepting a first argument of type 'BigInteger' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_37_sort_even --- completion 15 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the odd indicies, while its values at the even indicies are equal
    // to the values of the even indicies of l, but sorted.
    // >>> SortEven((new List<long>(new long[]{(long)1L, (long)2L, (long)3L})))
    // (new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))
    // >>> SortEven((new List<long>(new long[]{(long)5L, (long)6L, (long)3L, (long)4L})))
    // (new List<long>(new long[]{(long)3L, (long)6L, (long)5L, (long)4L}))
    public static List<long> SortEven(List<long> l) {
        List<long> result = new List<long>();
        for (int i = 0; i < l.Count; i++) {
            if (i % 2 == 0) {
                result.Add(l[i]);
            } else {
                result.Add(l[i]);
                result[i] = result[i].OrderBy(x => x).ToList();
            }
        }
        return result;
    }
    public static void Main(string[] args) {
    Debug.Assert(SortEven((new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))).Equals((new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))));
    Debug.Assert(SortEven((new List<long>(new long[]{(long)5L, (long)3L, (long)-5L, (long)2L, (long)-3L, (long)3L, (long)9L, (long)0L, (long)123L, (long)1L, (long)-10L}))).Equals((new List<long>(new long[]{(long)-10L, (long)3L, (long)-5L, (long)2L, (long)-3L, (long)3L, (long)5L, (long)0L, (long)9L, (long)1L, (long)123L}))));
    Debug.Assert(SortEven((new List<long>(new long[]{(long)5L, (long)8L, (long)-12L, (long)4L, (long)23L, (long)2L, (long)3L, (long)11L, (long)12L, (long)-10L}))).Equals((new List<long>(new long[]{(long)-12L, (long)8L, (long)3L, (long)4L, (long)5L, (long)2L, (long)12L, (long)11L, (long)23L, (long)-10L}))));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp102qeblf.cs(23,39): error CS1061: 'long' does not contain a definition for 'OrderBy' and no accessible extension method 'OrderBy' accepting a first argument of type 'long' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_37_sort_even --- completion 17 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the odd indicies, while its values at the even indicies are equal
    // to the values of the even indicies of l, but sorted.
    // >>> SortEven((new List<long>(new long[]{(long)1L, (long)2L, (long)3L})))
    // (new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))
    // >>> SortEven((new List<long>(new long[]{(long)5L, (long)6L, (long)3L, (long)4L})))
    // (new List<long>(new long[]{(long)3L, (long)6L, (long)5L, (long)4L}))
    public static List<long> SortEven(List<long> l) {
        List<long> ret = new List<long>();
        for (int i = 0; i < l.Count; i++) {
            if (i % 2 == 0) {
                ret.Add(l[i]);
            } else {
                ret.Add(l[i]);
                ret[i] = ret[i].OrderBy(x => x).ToList();
            }
        }
        return ret;
    }
    public static void Main(string[] args) {
    Debug.Assert(SortEven((new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))).Equals((new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))));
    Debug.Assert(SortEven((new List<long>(new long[]{(long)5L, (long)3L, (long)-5L, (long)2L, (long)-3L, (long)3L, (long)9L, (long)0L, (long)123L, (long)1L, (long)-10L}))).Equals((new List<long>(new long[]{(long)-10L, (long)3L, (long)-5L, (long)2L, (long)-3L, (long)3L, (long)5L, (long)0L, (long)9L, (long)1L, (long)123L}))));
    Debug.Assert(SortEven((new List<long>(new long[]{(long)5L, (long)8L, (long)-12L, (long)4L, (long)23L, (long)2L, (long)3L, (long)11L, (long)12L, (long)-10L}))).Equals((new List<long>(new long[]{(long)-12L, (long)8L, (long)3L, (long)4L, (long)5L, (long)2L, (long)12L, (long)11L, (long)23L, (long)-10L}))));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp4xbau5i2.cs(23,33): error CS1061: 'long' does not contain a definition for 'OrderBy' and no accessible extension method 'OrderBy' accepting a first argument of type 'long' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_37_sort_even --- completion 30 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the odd indicies, while its values at the even indicies are equal
    // to the values of the even indicies of l, but sorted.
    // >>> SortEven((new List<long>(new long[]{(long)1L, (long)2L, (long)3L})))
    // (new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))
    // >>> SortEven((new List<long>(new long[]{(long)5L, (long)6L, (long)3L, (long)4L})))
    // (new List<long>(new long[]{(long)3L, (long)6L, (long)5L, (long)4L}))
    public static List<long> SortEven(List<long> l) {
        List<long> result = new List<long>();
        for (int i = 0; i < l.Count; i++) {
            if (i % 2 == 0) {
                result.Add(l[i]);
            } else {
                result.Add(l[i]);
                result[i] = result[i].OrderBy(x => x).ToList();
            }
        }
        return result;
    }
    public static void Main(string[] args) {
    Debug.Assert(SortEven((new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))).Equals((new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))));
    Debug.Assert(SortEven((new List<long>(new long[]{(long)5L, (long)3L, (long)-5L, (long)2L, (long)-3L, (long)3L, (long)9L, (long)0L, (long)123L, (long)1L, (long)-10L}))).Equals((new List<long>(new long[]{(long)-10L, (long)3L, (long)-5L, (long)2L, (long)-3L, (long)3L, (long)5L, (long)0L, (long)9L, (long)1L, (long)123L}))));
    Debug.Assert(SortEven((new List<long>(new long[]{(long)5L, (long)8L, (long)-12L, (long)4L, (long)23L, (long)2L, (long)3L, (long)11L, (long)12L, (long)-10L}))).Equals((new List<long>(new long[]{(long)-12L, (long)8L, (long)3L, (long)4L, (long)5L, (long)2L, (long)12L, (long)11L, (long)23L, (long)-10L}))));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp102qeblf.cs(23,39): error CS1061: 'long' does not contain a definition for 'OrderBy' and no accessible extension method 'OrderBy' accepting a first argument of type 'long' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_37_sort_even --- completion 50 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the odd indicies, while its values at the even indicies are equal
    // to the values of the even indicies of l, but sorted.
    // >>> SortEven((new List<long>(new long[]{(long)1L, (long)2L, (long)3L})))
    // (new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))
    // >>> SortEven((new List<long>(new long[]{(long)5L, (long)6L, (long)3L, (long)4L})))
    // (new List<long>(new long[]{(long)3L, (long)6L, (long)5L, (long)4L}))
    public static List<long> SortEven(List<long> l) {
        List<long> ret = new List<long>();
        for (int i = 0; i < l.Count; i++) {
            if (i % 2 == 0) {
                ret.Add(l[i]);
            } else {
                ret.Add(l[i]);
                ret[i] = ret[i].OrderBy(x => x).ToList();
            }
        }
        return ret;
    }
    public static void Main(string[] args) {
    Debug.Assert(SortEven((new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))).Equals((new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))));
    Debug.Assert(SortEven((new List<long>(new long[]{(long)5L, (long)3L, (long)-5L, (long)2L, (long)-3L, (long)3L, (long)9L, (long)0L, (long)123L, (long)1L, (long)-10L}))).Equals((new List<long>(new long[]{(long)-10L, (long)3L, (long)-5L, (long)2L, (long)-3L, (long)3L, (long)5L, (long)0L, (long)9L, (long)1L, (long)123L}))));
    Debug.Assert(SortEven((new List<long>(new long[]{(long)5L, (long)8L, (long)-12L, (long)4L, (long)23L, (long)2L, (long)3L, (long)11L, (long)12L, (long)-10L}))).Equals((new List<long>(new long[]{(long)-12L, (long)8L, (long)3L, (long)4L, (long)5L, (long)2L, (long)12L, (long)11L, (long)23L, (long)-10L}))));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp4xbau5i2.cs(23,33): error CS1061: 'long' does not contain a definition for 'OrderBy' and no accessible extension method 'OrderBy' accepting a first argument of type 'long' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_37_sort_even --- completion 69 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // This function takes a list l and returns a list l' such that
    // l' is identical to l in the odd indicies, while its values at the even indicies are equal
    // to the values of the even indicies of l, but sorted.
    // >>> SortEven((new List<long>(new long[]{(long)1L, (long)2L, (long)3L})))
    // (new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))
    // >>> SortEven((new List<long>(new long[]{(long)5L, (long)6L, (long)3L, (long)4L})))
    // (new List<long>(new long[]{(long)3L, (long)6L, (long)5L, (long)4L}))
    public static List<long> SortEven(List<long> l) {
        List<long> ret = new List<long>();
        for (int i = 0; i < l.Count; i++) {
            if (i % 2 == 0) {
                ret.Add(l[i]);
            } else {
                ret.Add(l[i]);
                ret[i] = ret[i].OrderBy(x => x).ToList();
            }
        }
        return ret;
    }
    public static void Main(string[] args) {
    Debug.Assert(SortEven((new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))).Equals((new List<long>(new long[]{(long)1L, (long)2L, (long)3L}))));
    Debug.Assert(SortEven((new List<long>(new long[]{(long)5L, (long)3L, (long)-5L, (long)2L, (long)-3L, (long)3L, (long)9L, (long)0L, (long)123L, (long)1L, (long)-10L}))).Equals((new List<long>(new long[]{(long)-10L, (long)3L, (long)-5L, (long)2L, (long)-3L, (long)3L, (long)5L, (long)0L, (long)9L, (long)1L, (long)123L}))));
    Debug.Assert(SortEven((new List<long>(new long[]{(long)5L, (long)8L, (long)-12L, (long)4L, (long)23L, (long)2L, (long)3L, (long)11L, (long)12L, (long)-10L}))).Equals((new List<long>(new long[]{(long)-12L, (long)8L, (long)3L, (long)4L, (long)5L, (long)2L, (long)12L, (long)11L, (long)23L, (long)-10L}))));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp4xbau5i2.cs(23,33): error CS1061: 'long' does not contain a definition for 'OrderBy' and no accessible extension method 'OrderBy' accepting a first argument of type 'long' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_156_int_to_mini_roman --- completion 2 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a positive integer, obtain its roman numeral equivalent as a string,
    // and return it in lowercase.
    // Restrictions: 1 <= num <= 1000
    // Examples:
    // >>> IntToMiniRoman((19L))
    // ("xix")
    // >>> IntToMiniRoman((152L))
    // ("clii")
    // >>> IntToMiniRoman((426L))
    // ("cdxxvi")
    public static string IntToMiniRoman(long number) {
        var result = "";
        var numeral = new Dictionary<int, string> {
            {1, "i"},
            {5, "v"},
            {10, "x"},
            {50, "l"},
            {100, "c"},
            {500, "d"},
            {1000, "m"},
        };
        var numeral_values = numeral.Keys.ToList();
        numeral_values.Sort();
        numeral_values.Reverse();
        foreach (var value in numeral_values) {
            var count = number / value;
            number -= count * value;
            result += numeral[value].Repeat(count);
        }
        return result;
    }
    public static void Main(string[] args) {
    Debug.Assert(IntToMiniRoman((19L)).Equals(("xix")));
    Debug.Assert(IntToMiniRoman((152L)).Equals(("clii")));
    Debug.Assert(IntToMiniRoman((251L)).Equals(("ccli")));
    Debug.Assert(IntToMiniRoman((426L)).Equals(("cdxxvi")));
    Debug.Assert(IntToMiniRoman((500L)).Equals(("d")));
    Debug.Assert(IntToMiniRoman((1L)).Equals(("i")));
    Debug.Assert(IntToMiniRoman((4L)).Equals(("iv")));
    Debug.Assert(IntToMiniRoman((43L)).Equals(("xliii")));
    Debug.Assert(IntToMiniRoman((90L)).Equals(("xc")));
    Debug.Assert(IntToMiniRoman((94L)).Equals(("xciv")));
    Debug.Assert(IntToMiniRoman((532L)).Equals(("dxxxii")));
    Debug.Assert(IntToMiniRoman((900L)).Equals(("cm")));
    Debug.Assert(IntToMiniRoman((994L)).Equals(("cmxciv")));
    Debug.Assert(IntToMiniRoman((1000L)).Equals(("m")));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmphvje4mnl.cs(36,38): error CS1061: 'string' does not contain a definition for 'Repeat' and no accessible extension method 'Repeat' accepting a first argument of type 'string' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_156_int_to_mini_roman --- completion 6 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a positive integer, obtain its roman numeral equivalent as a string,
    // and return it in lowercase.
    // Restrictions: 1 <= num <= 1000
    // Examples:
    // >>> IntToMiniRoman((19L))
    // ("xix")
    // >>> IntToMiniRoman((152L))
    // ("clii")
    // >>> IntToMiniRoman((426L))
    // ("cdxxvi")
    public static string IntToMiniRoman(long number) {
        var result = new StringBuilder();
        var roman = new Dictionary<int, string>() {
            { 1, "i" },
            { 5, "v" },
            { 10, "x" },
            { 50, "l" },
            { 100, "c" },
            { 500, "d" },
            { 1000, "m" }
        };
        var digits = new List<int>();
        while (number > 0) {
            digits.Add((int)(number % 10));
            number /= 10;
        }
        digits.Reverse();
        for (int i = 0; i < digits.Count; i++) {
            var digit = digits[i];
            var factor = (int)Math.Pow(10, i);
            if (digit <= 3) {
                result.Append(roman[factor].Repeat(digit));
            } else if (digit == 4) {
                result.Append(roman[factor] + roman[5 * factor]);
            } else if (digit <= 8) {
                result.Append(roman[5 * factor] + roman[factor].Repeat(digit - 5));
            } else {
                result.Append(roman[factor] + roman[10 * factor]);
            }
        }
        return result.ToString();
    }
    public static void Main(string[] args) {
    Debug.Assert(IntToMiniRoman((19L)).Equals(("xix")));
    Debug.Assert(IntToMiniRoman((152L)).Equals(("clii")));
    Debug.Assert(IntToMiniRoman((251L)).Equals(("ccli")));
    Debug.Assert(IntToMiniRoman((426L)).Equals(("cdxxvi")));
    Debug.Assert(IntToMiniRoman((500L)).Equals(("d")));
    Debug.Assert(IntToMiniRoman((1L)).Equals(("i")));
    Debug.Assert(IntToMiniRoman((4L)).Equals(("iv")));
    Debug.Assert(IntToMiniRoman((43L)).Equals(("xliii")));
    Debug.Assert(IntToMiniRoman((90L)).Equals(("xc")));
    Debug.Assert(IntToMiniRoman((94L)).Equals(("xciv")));
    Debug.Assert(IntToMiniRoman((532L)).Equals(("dxxxii")));
    Debug.Assert(IntToMiniRoman((900L)).Equals(("cm")));
    Debug.Assert(IntToMiniRoman((994L)).Equals(("cmxciv")));
    Debug.Assert(IntToMiniRoman((1000L)).Equals(("m")));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp6dxt5jsd.cs(40,45): error CS1061: 'string' does not contain a definition for 'Repeat' and no accessible extension method 'Repeat' accepting a first argument of type 'string' could be found (are you missing a using directive or an assembly reference?)
/tmp/tmp6dxt5jsd.cs(44,65): error CS1061: 'string' does not contain a definition for 'Repeat' and no accessible extension method 'Repeat' accepting a first argument of type 'string' could be found (are you missing a using directive or an assembly reference?)

'''





# ---- HumanEval_156_int_to_mini_roman --- completion 7 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a positive integer, obtain its roman numeral equivalent as a string,
    // and return it in lowercase.
    // Restrictions: 1 <= num <= 1000
    // Examples:
    // >>> IntToMiniRoman((19L))
    // ("xix")
    // >>> IntToMiniRoman((152L))
    // ("clii")
    // >>> IntToMiniRoman((426L))
    // ("cdxxvi")
    public static string IntToMiniRoman(long number) {
        var roman = new StringBuilder();
        var digits = new List<int>();
        while (number > 0) {
            digits.Add((int)(number % 10));
            number /= 10;
        }
        digits.Reverse();
        for (int i = 0; i < digits.Count; i++) {
            switch (digits[i]) {
                case 1:
                    roman.Append("i");
                    break;
                case 2:
                    roman.Append("ii");
                    break;
                case 3:
                    roman.Append("iii");
                    break;
                case 4:
                    roman.Append("iv");
                    break;
                case 5:
                    roman.Append("v");
                    break;
                case 6:
                    roman.Append("vi");
                    break;
                case 7:
                    roman.Append("vii");
                    break;
                case 8:
                    roman.Append("viii");
                    break;
                case 9:
                    roman.Append("ix");
                    break;
            }
            if (i == 0) {
                roman.Append("x".Repeat(digits[i]));
            } else if (i == 1) {
                roman.Append("c".Repeat(digits[i]));
            } else if (i == 2) {
                roman.Append("m".Repeat(digits[i]));
            }
        }
        return roman.ToString();
    }
    public static void Main(string[] args) {
    Debug.Assert(IntToMiniRoman((19L)).Equals(("xix")));
    Debug.Assert(IntToMiniRoman((152L)).Equals(("clii")));
    Debug.Assert(IntToMiniRoman((251L)).Equals(("ccli")));
    Debug.Assert(IntToMiniRoman((426L)).Equals(("cdxxvi")));
    Debug.Assert(IntToMiniRoman((500L)).Equals(("d")));
    Debug.Assert(IntToMiniRoman((1L)).Equals(("i")));
    Debug.Assert(IntToMiniRoman((4L)).Equals(("iv")));
    Debug.Assert(IntToMiniRoman((43L)).Equals(("xliii")));
    Debug.Assert(IntToMiniRoman((90L)).Equals(("xc")));
    Debug.Assert(IntToMiniRoman((94L)).Equals(("xciv")));
    Debug.Assert(IntToMiniRoman((532L)).Equals(("dxxxii")));
    Debug.Assert(IntToMiniRoman((900L)).Equals(("cm")));
    Debug.Assert(IntToMiniRoman((994L)).Equals(("cmxciv")));
    Debug.Assert(IntToMiniRoman((1000L)).Equals(("m")));
    }

}

# status = SyntaxError
# exit_code = 1
''' stderr = 

'''
''' stdout = 
Microsoft (R) Visual C# Compiler version 3.6.0-4.20224.5 (ec77c100)
Copyright (C) Microsoft Corporation. All rights reserved.

/tmp/tmp5_0a9gy9.cs(58,34): error CS1061: 'string' does not contain a definition for 'Repeat' and no accessible extension method 'Repeat' accepting a first argument of type 'string' could be found (are you missing a using directive or an assembly reference?)
/tmp/tmp5_0a9gy9.cs(60,34): error CS1061: 'string' does not contain a definition for 'Repeat' and no accessible extension method 'Repeat' accepting a first argument of type 'string' could be found (are you missing a using directive or an assembly reference?)
/tmp/tmp5_0a9gy9.cs(62,34): error CS1061: 'string' does not contain a definition for 'Repeat' and no accessible extension method 'Repeat' accepting a first argument of type 'string' could be found (are you missing a using directive or an assembly reference?)

'''





