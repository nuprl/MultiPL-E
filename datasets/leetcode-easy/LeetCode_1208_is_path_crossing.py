def is_path_crossing(path: str) -> bool:
    """
    Given a string path, where path[i] = 'N', 'S', 'E' or 'W', each representing moving one unit north, south, east, or west, respectively. You start at the origin (0, 0) on a 2D plane and walk on the path specified by path.
    Return true if the path crosses itself at any point, that is, if at any time you are on a location you have previously visited. Return false otherwise.
 
    Example 1:


    Input: path = "NES"
    Output: false 
    Explanation: Notice that the path doesn't cross any point more than once.

    Example 2:


    Input: path = "NESWW"
    Output: true
    Explanation: Notice that the path visits the origin twice.
 
    Constraints:

    1 <= path.length <= 104
    path[i] is either 'N', 'S', 'E', or 'W'.

    """
    ### Canonical solution below ###
    visited = {(0, 0)}
    x, y = 0, 0
    for dir in path:
        if dir == 'N':
            y += 1
        elif dir == 'S':
            y -= 1
        elif dir == 'E':
            x += 1
        elif dir == 'W':
            x -= 1
        if (x, y) in visited:
            return True
        visited.add((x, y))
    return False




### Unit tests below ###
def check(candidate):
	assert candidate('NNNN') == False
	assert candidate('EEWW') == True
	assert candidate('NESWNESWN') == True
	assert candidate(
    'NNNNEEEENNNNSSSSWNWWSWNWWSWWSSSSWWNWWSWNWWSWWNWWNWWSWWNWWSWWNWWSWWNWWSWWNWWSWWNWWNWWNWWSWWNWWSWWNWWNWWSWWNWWSWWNWWNWWNWWNNNNNNNNNNNNNNNNNNNNNNNNN'
) == True
	assert candidate(
    'NNNNNNSSSSSSSSSSSSSSEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEESSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS'
) == True
	assert candidate('NNSS') == True
	assert candidate('EEEENNNN') == False
	assert candidate('SSSS') == False
	assert candidate('SSSSWWWW') == False
	assert candidate('NNNNNSEESWWWNWW') == True
	assert candidate('NES') == False
	assert candidate('NWWSE') == False
	assert candidate('WWWSEEE') == False
	assert candidate('NNNNW') == False
	assert candidate('N') == False
	assert candidate('WWWWS') == False
	assert candidate('WWWW') == False
	assert candidate('NESEW') == True
	assert candidate('NWNES') == True
	assert candidate(
    'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSWNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWNNNNNNNNNNNNN') == False
	assert candidate(
    'NSSSSWWWNWNWNWNWWNWWSSWWWSSSSNNNSSSSSSSSSSSSSSSSSSWNNSSWNNESSSWWWWSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSWSWNNE') == True
	assert candidate('NNNNEEEE') == False
	assert candidate('SSSSE') == False
	assert candidate('NESW') == True
	assert candidate('NESWN') == True
	assert candidate('WWSSNNN') == True
	assert candidate('WWWWN') == False
	assert candidate('EEEEWWWW') == True
	assert candidate('EEEE') == False
	assert candidate(
    'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSWNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWNNNNNNNNNNNNN') == False
def test_check():
	check(is_path_crossing)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
