def entity_parser(text: str) -> str:
    """
    HTML entity parser is the parser that takes HTML code as input and replace all the entities of the special characters by the characters itself.
    The special characters and their entities for HTML are:

    Quotation Mark: the entity is &quot; and symbol character is ".
    Single Quote Mark: the entity is &apos; and symbol character is '.
    Ampersand: the entity is &amp; and symbol character is &.
    Greater Than Sign: the entity is &gt; and symbol character is >.
    Less Than Sign: the entity is &lt; and symbol character is <.
    Slash: the entity is &frasl; and symbol character is /.

    Given the input text string to the HTML parser, you have to implement the entity parser.
    Return the text after replacing the entities by the special characters.
 
    Example 1:

    Input: text = "&amp; is an HTML entity but &ambassador; is not."
    Output: "& is an HTML entity but &ambassador; is not."
    Explanation: The parser will replace the &amp; entity by &

    Example 2:

    Input: text = "and I quote: &quot;...&quot;"
    Output: "and I quote: \"...\""

 
    Constraints:

    1 <= text.length <= 105
    The string may contain any possible characters out of all the 256 ASCII characters.

    """
    ### Canonical solution below ###
    entities = {
        "&quot;": "\"",
        "&apos;": "'",
        "&amp;": "&",
        "&gt;": ">",
        "&lt;": "<",
        "&frasl;": "/",
    }

    result = []
    current_entity = []
    in_entity = False

    for c in text:
        if in_entity:
            current_entity.append(c)
            if c == ';':
                entity = ''.join(current_entity)
                if entity in entities:
                    result.append(entities[entity])
                else:
                    result.extend(current_entity)
                in_entity = False
                current_entity.clear()
        else:
            if c == '&':
                in_entity = True
                current_entity.append(c)
            else:
                result.append(c)

    return ''.join(result)




### Unit tests below ###
def check(candidate):
	assert candidate("a&apos;b") == "a'b"
	assert candidate("&amp;quot;") == "&quot;"
	assert candidate("&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;") == "&&&&&&&&"
	assert candidate("&lt;") == "<"
	assert candidate("&gt;&gt;&gt;&gt;") == ">>>>"
	assert candidate("&frasl;") == "/"
	assert candidate("leetcode.com&frasl;problemset&frasl;all") == "leetcode.com/problemset/all"
	assert candidate("&quot; is an HTML entity but &ambassador; is not.") == "\" is an HTML entity but &ambassador; is not."
	assert candidate("and I quote: &quot;...&quot;") == 'and I quote: "..."'
	assert candidate("a &frasl; b &gt; c &lt; d &amp; e &apos; f &quot; g") == "a / b > c < d & e ' f \" g"
	assert candidate("&frasl;&frasl;&frasl;&frasl;") == "////"
	assert candidate("a &frasl; b") == "a / b"
	assert candidate("a&quot;b") == "a\"b"
	assert candidate("&gt;") == ">"
	assert candidate("a&frasl;b") == "a/b"
	assert candidate("&gt; &amp; &gt;") == "> & >"
	assert candidate("a &amp; b") == "a & b"
	assert candidate("&quot;&amp;quot;") == "\"&quot;"
	assert candidate("&amp;apos;") == "&apos;"
	assert candidate("Stay home! Practice on Leetcode :)") == "Stay home! Practice on Leetcode :)"
	assert candidate("a &gt; b") == "a > b"
	assert candidate("&amp;") == "&"
	assert candidate("") == ""
	assert candidate("&lt;&lt;&lt;&lt;") == "<<<<"
	assert candidate("a &apos; b") == "a ' b"
	assert candidate("&amp; is an HTML entity but &ambassador; is not.") == "& is an HTML entity but &ambassador; is not."
	assert candidate("a&amp;b") == "a&b"
	assert candidate("&quot;") == "\""
	assert candidate("a &lt; b") == "a < b"
	assert candidate("x &gt; y &amp;&amp; x &lt; y is always false") == "x > y && x < y is always false"
	assert candidate("Hello World") == "Hello World"
	assert candidate("&amp;amp;") == "&amp;"
	assert candidate("&apos;&amp;apos;") == "'&apos;"
	assert candidate("a&gt;b") == "a>b"
	assert candidate("a&quot;b&quot;c&quot;d") == "a\"b\"c\"d"
	assert candidate("&apos;") == "'"
	assert candidate("a&lt;b") == "a<b"
	assert candidate("a&lt;&lt;&lt;b&gt;&gt;&gt;c") == "a<<<b>>>c"
	assert candidate("a &quot; b") == 'a " b'
	assert candidate("&gt; &amp;") == "> &"
	assert candidate("&gt;&gt;") == ">>"
	assert candidate("&amp;&amp;&amp;&amp;") == "&&&&"
def test_check():
	check(entity_parser)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
