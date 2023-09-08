def entityParser(text: str) -> str:
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
        "&quot;": '\"',
        "&apos;": '\'',
        "&amp;": '&',
        "&gt;": '>',
        "&lt;": '<',
        "&frasl;": '/'
    }

    result, i = [], 0
    while i < len(text):
        if text[i] == '&':
            temp = ''
            for j in range(i, min(i+7, len(text))):
                temp += text[j]
                if temp in entities:
                    result.append(entities[temp])
                    i = j
                    break
            else:
                result.append(text[i])
        else:
            result.append(text[i])
        i += 1
    return ''.join(result)




### Unit tests below ###
def check(candidate):
	assert candidate("///////") == '///////'
	assert candidate("'''''''") == "'''''''"
	assert candidate("&quot; &gt; &lt; &quot;") == '" > < "'
	assert candidate("&lt;&gt;&amp;") == '<>&'
	assert candidate("&&&&&&&quot;") == '&&&&&&"'
	assert candidate(
    "&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;") == '>>>>>>>>>>>>>>>>>>>'
	assert candidate("&lt;&amp;&gt;&frasl;&apos;&quot;") == '<&>/\'\"'
	assert candidate("1 &gt; 0") == '1 > 0'
	assert candidate("10 &frasl; 2 = 5") == '10 / 2 = 5'
	assert candidate("&amp; &amp; &amp;") == '& & &'
	assert candidate("&frasl;") == '/'
	assert candidate(">>>>>>") == '>>>>>>'
	assert candidate("<<<<<<>") == '<<<<<<>'
	assert candidate("&amp;&amp;&amp;&amp;") == '&&&&'
	assert candidate("&gt;") == '>'
	assert candidate("&lt;") == '<'
	assert candidate(
    "The &apos;quotation&apos; marks on the &quot;inside&quot;.") == "The 'quotation' marks on the \"inside\"."
	assert candidate("A &lt; B &amp; B &lt; C") == 'A < B & B < C'
	assert candidate("Hello &quot;World&quot;") == 'Hello "World"'
	assert candidate("&amp; &lt; &gt; &frasl; &quot; &apos; &amp;") == '& < > / " \' &'
	assert candidate("&amp;") == '&'
	assert candidate("&&&&&&&") == '&&&&&&&'
	assert candidate(
    "&gt;&gt;&gt; &amp; &quot;&quot;&quot; &gt; &lt;&lt;&lt; &amp; &apos;") == '>>> & "\"" > <<< & \''
	assert candidate("&apos;") == '\''
	assert candidate("Hello &amp; Goodbye&lt;/&gt; &amp; &apos; &quot;") == 'Hello & Goodbye</> & \' "'
	assert candidate("&quot;") == '\"'
	assert candidate("Hello &amp; goodbye") == 'Hello & goodbye'
	assert candidate("Hello &amp; Goodbye&lt;/&gt;") == 'Hello & Goodbye</>'
	assert candidate("&quot; &gt; &amp; &lt; &quot;") == '" > & < "'
	assert candidate("Hello &quot; World &quot;") == 'Hello " World "'
	assert candidate("Hello World") == 'Hello World'
	assert candidate("&lt;&lt;&lt; &gt;&gt;&gt;") == '<<< >>>'
	assert candidate("&quot;&apos;&frasl;") == '\"\'/'
def test_check():
	check(entityParser)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
