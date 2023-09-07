def simplifyPath(path: str) -> str:
    """
    Given a string path, which is an absolute path (starting with a slash '/') to a file or directory in a Unix-style file system, convert it to the simplified canonical path.
    In a Unix-style file system, a period '.' refers to the current directory, a double period '..' refers to the directory up a level, and any multiple consecutive slashes (i.e. '//') are treated as a single slash '/'. For this problem, any other format of periods such as '...' are treated as file/directory names.
    The canonical path should have the following format:

    The path starts with a single slash '/'.
    Any two directories are separated by a single slash '/'.
    The path does not end with a trailing '/'.
    The path only contains the directories on the path from the root directory to the target file or directory (i.e., no period '.' or double period '..')

    Return the simplified canonical path.
 
    Example 1:

    Input: path = "/home/"
    Output: "/home"
    Explanation: Note that there is no trailing slash after the last directory name.

    Example 2:

    Input: path = "/../"
    Output: "/"
    Explanation: Going one level up from the root directory is a no-op, as the root level is the highest level you can go.

    Example 3:

    Input: path = "/home//foo/"
    Output: "/home/foo"
    Explanation: In the canonical path, multiple consecutive slashes are replaced by a single one.

 
    Constraints:

    1 <= path.length <= 3000
    path consists of English letters, digits, period '.', slash '/' or '_'.
    path is a valid absolute Unix path.

    """
    ### Canonical solution below ###
    stack = []
    parts = path.split("/")

    for part in parts:
        if not part or part == ".":
            continue
        if part == "..":
            if stack:
                stack.pop()
        else:
            stack.append(part)

    return "/" + "/".join(stack)




### Unit tests below ###
def check(candidate):
	assert candidate("/../") == "/"
	assert candidate(
    "/net/www/htdocs/wp-content/themes/pvc2014/inc/page-templates/page-template-view-announcements/view-announcements/./") == "/net/www/htdocs/wp-content/themes/pvc2014/inc/page-templates/page-template-view-announcements/view-announcements"
	assert candidate("/a/../../b/../c//.//") == "/c"
	assert candidate("/home/../../..") == "/"
	assert candidate(
    "/.././GVzvE/./xBjU///../..///././//////T/../../.././zu/q/e"
) == "/zu/q/e"
	assert candidate("/a//b////c/d//././/..") == "/a/b/c"
	assert candidate(
    "/home/of/foo/../../bar/../../is/./here/././//.///.///./"
) == "/is/here"
	assert candidate("/a/./b/../../c/") == "/c"
	assert candidate("/a/./b/./c/./d") == "/a/b/c/d"
	assert candidate("/../.././.././../././.././/././/.././/././/././..//..//..///..//././/..//...//.././/.../././..//././/..//..//././/.//..//.//././/..//../") == "/"
	assert candidate("/home/of/foo/../../bar/../../is/./here/.") == "/is/here"
	assert candidate("/fuq////../u/..") == "/"
	assert candidate("/home/of/foo/../../bar/../../is/./here/././//.///.///./") == "/is/here"
	assert candidate("/home/") == "/home"
	assert candidate("/../../..//.././/.//.//././/..//.////.//..////..///") == "/"
	assert candidate("/.././GVzvE/./xBjU///../..///././//////T/../../.././zu/q/e") == "/zu/q/e"
	assert candidate("/.././../////.//..///////./..//..//././/..//.//.//////..//./../..//..///////././/.////.../../../a") == "/a"
	assert candidate("/home//foo/") == "/home/foo"
def test_check():
	check(simplifyPath)
# Metadata Difficulty: Medium
# Metadata Topics: string,stack
# Metadata Coverage: 100
