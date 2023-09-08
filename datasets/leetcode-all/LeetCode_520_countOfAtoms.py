def countOfAtoms(formula: str) -> str:
    """
    Given a string formula representing a chemical formula, return the count of each atom.
    The atomic element always starts with an uppercase character, then zero or more lowercase letters, representing the name.
    One or more digits representing that element's count may follow if the count is greater than 1. If the count is 1, no digits will follow.

    For example, "H2O" and "H2O2" are possible, but "H1O2" is impossible.

    Two formulas are concatenated together to produce another formula.

    For example, "H2O2He3Mg4" is also a formula.

    A formula placed in parentheses, and a count (optionally added) is also a formula.

    For example, "(H2O2)" and "(H2O2)3" are formulas.

    Return the count of all elements as a string in the following form: the first name (in sorted order), followed by its count (if that count is more than 1), followed by the second name (in sorted order), followed by its count (if that count is more than 1), and so on.
    The test cases are generated so that all the values in the output fit in a 32-bit integer.
 
    Example 1:

    Input: formula = "H2O"
    Output: "H2O"
    Explanation: The count of elements are {'H': 2, 'O': 1}.

    Example 2:

    Input: formula = "Mg(OH)2"
    Output: "H2MgO2"
    Explanation: The count of elements are {'H': 2, 'Mg': 1, 'O': 2}.

    Example 3:

    Input: formula = "K4(ON(SO3)2)2"
    Output: "K4N2O14S4"
    Explanation: The count of elements are {'K': 4, 'N': 2, 'O': 14, 'S': 4}.

 
    Constraints:

    1 <= formula.length <= 1000
    formula consists of English letters, digits, '(', and ')'.
    formula is always valid.

    """
    ### Canonical solution below ###
    from collections import Counter

    def parse(formula, i):
        counts = Counter()
        while i[0] < len(formula):
            if formula[i[0]] == '(':
                i[0] += 1
                temp = parse(formula, i)
                count = 0
                while i[0] < len(formula) and formula[i[0]].isdigit():
                    count = count * 10 + int(formula[i[0]])
                    i[0] += 1
                if count == 0:
                    count = 1
                for name, c in temp.items():
                    counts[name] += c * count
            elif formula[i[0]] == ')':
                i[0] += 1
                return counts
            else:
                name = formula[i[0]]
                i[0] += 1
                while i[0] < len(formula) and formula[i[0]].islower():
                    name += formula[i[0]]
                    i[0] += 1
                count = 0
                while i[0] < len(formula) and formula[i[0]].isdigit():
                    count = count * 10 + int(formula[i[0]])
                    i[0] += 1
                if count == 0:
                    count = 1
                counts[name] += count
        return counts
    i = [0]
    counts = parse(formula, i)
    ans = []
    for name, count in counts.items():
        ans.append(name)
        if count > 1:
            ans.append(str(count))
    return ''.join(ans)




### Unit tests below ###
def check(candidate):
	assert candidate("(H2O2)3") == "H6O6"
	assert candidate("(((H)2)8)4") == "H64"
	assert candidate("(((H)2)8)4N2O14S4") == "H64N2O14S4"
	assert candidate("Be32") == "Be32"
	assert candidate("(H2O2)") == "H2O2"
	assert candidate("(C6H12O6)2") == "C12H24O12"
	assert candidate("((H)8)4") == "H32"
	assert candidate("((H))4") == "H4"
	assert candidate("(Cl)3(F)7") == "Cl3F7"
	assert candidate("H2O2(H2O2)H2O2") == "H6O6"
	assert candidate("(H2O)10") == "H20O10"
	assert candidate("") == ""
	assert candidate("H50") == "H50"
	assert candidate("O0") == "O"
	assert candidate("(C12H22O11)2") == "C24H44O22"
	assert candidate("C6H12O6") == "C6H12O6"
	assert candidate("(H)2") == "H2"
	assert candidate("H2O") == "H2O"
	assert candidate("(H)2(H)2") == "H4"
	assert candidate("H2O2") == "H2O2"
	assert candidate("C12H22O11") == "C12H22O11"
	assert candidate("(H)0") == "H"
def test_check():
	check(countOfAtoms)
# Metadata Difficulty: Hard
# Metadata Topics: hash-table,string,stack,sorting
# Metadata Coverage: 100
