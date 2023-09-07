def to_lower_case(s: str) -> str:
    """
    Given a string s, return the string after replacing every uppercase letter with the same lowercase letter.
 
    Example 1:

    Input: s = "Hello"
    Output: "hello"

    Example 2:

    Input: s = "here"
    Output: "here"

    Example 3:

    Input: s = "LOVELY"
    Output: "lovely"

 
    Constraints:

    1 <= s.length <= 100
    s consists of printable ASCII characters.

    """
    ### Canonical solution below ###
    return s.lower()




### Unit tests below ###
def check(candidate):
	assert candidate("lowercasealready") == "lowercasealready"
	assert candidate("SPECIAL CHARACTERS @#$%") == "special characters @#$%"
	assert candidate("SingleWord") == "singleword"
	assert candidate("AbCdEfG") == "abcdefg"
	assert candidate("Very Long String") == "very long string"
	assert candidate("EndsWithSpace ") == "endswithspace "
	assert candidate(candidate("UPPERCASE")) == candidate("UPPERCASE")
	assert candidate(
    "Python + Is + Really + Great!") == "python + is + really + great!"
	assert candidate("12345") == "12345"
	assert candidate(candidate("Hello World")) == candidate("Hello World")
	assert candidate("JavA\t") == "java\t"
	assert candidate("1A2B3C") == "1a2b3c"
	assert candidate("UPPERCASE") == "uppercase"
	assert candidate("WoRLd") == "world"
	assert candidate("Abc\t") == "abc\t"
	assert candidate("Lowercase") == "lowercase"
	assert candidate("mIxEdCaSeWiThSpEcIaLcHaRaCtErS@#$%") == "mixedcasewithspecialcharacters@#$%"
	assert candidate("AbcDEFG") == "abcdefg"
	assert candidate("TEST_CASE") == "test_case"
	assert candidate("LoWeRcAsE") == "lowercase"
	assert candidate("Abc\tDeF\t") == "abc\tdef\t"
	assert candidate("Tab\tSpaces") == "tab\tspaces"
	assert candidate("Abc\n") == "abc\n"
	assert candidate("abcDEFG") == "abcdefg"
	assert candidate("No Changes") == "no changes"
	assert candidate(
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!#$%&'()*+,-./:;<=>?@[]^_`{|}~  \t\n\r\x0b\x0c") == \
       "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz0123456789!#$%&'()*+,-./:;<=>?@[]^_`{|}~  \t\n\r\x0b\x0c"
	assert candidate(candidate("SPECIAL CHARACTERS @#$%")) == candidate("SPECIAL CHARACTERS @#$%")
	assert candidate("Multiple     Spaces") == "multiple     spaces"
	assert candidate("Both Ends ") == "both ends "
	assert candidate("  Extra  Spaces  ") == "  extra  spaces  "
	assert candidate("W") == "w"
	assert candidate("JAVA\t") == "java\t"
	assert candidate(candidate("HELLO WORLD")) == candidate("HELLO WORLD")
	assert candidate(candidate("LOWERCASE")) == candidate("LOWERCASE")
	assert candidate("HELLO") == "hello"
	assert candidate(candidate("H\ne\tl\tl\to")) == candidate("H\ne\tl\tl\to")
	assert candidate("") == ""
	assert candidate(candidate("Here is a sentence that will be lowercased.")) == candidate("Here is a sentence that will be lowercased.")
	assert candidate("ABCDEFG\n") == "abcdefg\n"
	assert candidate("With Numbers 12345") == "with numbers 12345"
	assert candidate("L") == "l"
	assert candidate(candidate("Test\nString\tTo\fBe\bLowerCased")) == candidate("Test\nString\tTo\fBe\bLowerCased")
	assert candidate("LoWeRcAsE 123 ABC") == "lowercase 123 abc"
	assert candidate("ABCDEFG") == "abcdefg"
	assert candidate(" Starts with space") == " starts with space"
	assert candidate("SPECIAL chars @#$%") == "special chars @#$%"
	assert candidate("mIXeD CaSe") == "mixed case"
	assert candidate("Abc  DeF\n") == "abc  def\n"
	assert candidate("123ABC") == "123abc"
	assert candidate(
    "HELLO WORLD 123456 @#$%^&*() aBcDeF G") == "hello world 123456 @#$%^&*() abcdef g"
	assert candidate("1aBcDeFg") == "1abcdefg"
	assert candidate("123") == "123"
	assert candidate("Abc\nDef") == "abc\ndef"
	assert candidate("Hello\nWorld") == "hello\nworld"
	assert candidate("Abc") == "abc"
	assert candidate("abCdEfG") == "abcdefg"
	assert candidate("PYTHON") == "python"
	assert candidate("@#!$%^&*()") == "@#!$%^&*()"
def test_check():
	check(to_lower_case)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
