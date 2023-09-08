from typing import List


def get_folder_names(names: List[str]) -> List[str]:
    """
    Given an array of strings names of size n. You will create n folders in your file system such that, at the ith minute, you will create a folder with the name names[i].
    Since two files cannot have the same name, if you enter a folder name that was previously used, the system will have a suffix addition to its name in the form of (k), where, k is the smallest positive integer such that the obtained name remains unique.
    Return an array of strings of length n where ans[i] is the actual name the system will assign to the ith folder when you create it.
 
    Example 1:

    Input: names = ["pes","fifa","gta","pes(2019)"]
    Output: ["pes","fifa","gta","pes(2019)"]
    Explanation: Let's see how the file system creates folder names:
    "pes" --> not assigned before, remains "pes"
    "fifa" --> not assigned before, remains "fifa"
    "gta" --> not assigned before, remains "gta"
    "pes(2019)" --> not assigned before, remains "pes(2019)"

    Example 2:

    Input: names = ["gta","gta(1)","gta","avalon"]
    Output: ["gta","gta(1)","gta(2)","avalon"]
    Explanation: Let's see how the file system creates folder names:
    "gta" --> not assigned before, remains "gta"
    "gta(1)" --> not assigned before, remains "gta(1)"
    "gta" --> the name is reserved, system adds (k), since "gta(1)" is also reserved, systems put k = 2. it becomes "gta(2)"
    "avalon" --> not assigned before, remains "avalon"

    Example 3:

    Input: names = ["onepiece","onepiece(1)","onepiece(2)","onepiece(3)","onepiece"]
    Output: ["onepiece","onepiece(1)","onepiece(2)","onepiece(3)","onepiece(4)"]
    Explanation: When the last folder is created, the smallest positive valid k is 4, and it becomes "onepiece(4)".

 
    Constraints:

    1 <= names.length <= 5 * 104
    1 <= names[i].length <= 20
    names[i] consists of lowercase English letters, digits, and/or round brackets.

    """
    ### Canonical solution below ###
    name_count = {}
    ans = []

    for name in names:
        if name not in name_count:
            ans.append(name)
            name_count[name] = 1
        else:
            k = name_count[name]
            new_name = f"{name}({k})"
            while new_name in name_count:
                k += 1
                new_name = f"{name}({k})"
            ans.append(new_name)
            name_count[new_name] = 1
            name_count[name] = k + 1

    return ans




### Unit tests below ###
def check(candidate):
	assert candidate(["gta", "gta(1)", "gta", "avalon"]) == ["gta", "gta(1)", "gta(2)", "avalon"]
	assert candidate(["wano", "wano", "wano", "wano", "wano(1)"]) == ["wano", "wano(1)", "wano(2)", "wano(3)", "wano(1)(1)"]
	assert candidate(["Test", "Test1", "Test", "Test1", "Test", "Test1"]) == ["Test", "Test1", "Test(1)", "Test1(1)", "Test(2)", "Test1(2)"]
	assert candidate(["gta","gta(1)","gta","avalon"]) == ["gta","gta(1)","gta(2)","avalon"]
	assert candidate(["Test", "Test", "Test", "Test", "Test", "Test", "Test", "Test", "Test", "Test", "Test", "Test"]) == ["Test", "Test(1)", "Test(2)", "Test(3)", "Test(4)", "Test(5)", "Test(6)", "Test(7)", "Test(8)", "Test(9)", "Test(10)", "Test(11)"]
	assert candidate(["a", "b", "c", "a", "b", "c"]) == ["a", "b", "c", "a(1)", "b(1)", "c(1)"]
	assert candidate(["Python", "Python", "Java", "Java", "Python", "Java"]) == ["Python", "Python(1)", "Java", "Java(1)", "Python(2)", "Java(2)"]
	assert candidate(["onepiece", "onepiece(1)", "onepiece(2)", "onepiece(3)", "onepiece"]) == ["onepiece", "onepiece(1)", "onepiece(2)", "onepiece(3)", "onepiece(4)"]
	assert candidate(["Test", "Test", "Test"]) == ["Test", "Test(1)", "Test(2)"]
	assert candidate(["pes", "fifa", "gta", "pes(2019)"]) == ["pes", "fifa", "gta", "pes(2019)"]
	assert candidate(["a", "a", "b", "b", "c", "c"]) == ["a", "a(1)", "b", "b(1)", "c", "c(1)"]
	assert candidate(["wano", "wano", "wano", "wano"]) == ["wano", "wano(1)", "wano(2)", "wano(3)"]
	assert candidate(["A", "A", "A", "A"]) == ["A", "A(1)", "A(2)", "A(3)"]
	assert candidate(["onepiece","onepiece(1)","onepiece(2)","onepiece(3)","onepiece"]) == ["onepiece","onepiece(1)","onepiece(2)","onepiece(3)","onepiece(4)"]
	assert candidate(["A", "B", "A", "A", "A", "B"]) == ["A", "B", "A(1)", "A(2)", "A(3)", "B(1)"]
	assert candidate(["Folder", "Folder", "Folder", "Folder", "Folder"]) == ["Folder", "Folder(1)", "Folder(2)", "Folder(3)", "Folder(4)"]
	assert candidate(["A", "B", "A", "A", "B", "B"]) == ["A", "B", "A(1)", "A(2)", "B(1)", "B(2)"]
	assert candidate(["wano","wano","wano","wano"]) == ["wano","wano(1)","wano(2)","wano(3)"]
	assert candidate(["pes","fifa","gta","pes(2019)"]) == ["pes","fifa","gta","pes(2019)"], "Example test case 1"
	assert candidate(["1", "1", "1", "1", "1"]) == ["1", "1(1)", "1(2)", "1(3)", "1(4)"]
	assert candidate(["New", "New", "Old", "Old", "New", "Old"]) == ["New", "New(1)", "Old", "Old(1)", "New(2)", "Old(2)"]
def test_check():
	check(get_folder_names)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,string
# Metadata Coverage: 100
