from typing import List

def lastVisitedIntegers(words: List[str]) -> List[int]:
    """
    Given a 0-indexed array of strings words where words[i] is either a positive integer represented as a string or the string "prev".
    
    Start iterating from the beginning of the array; for every "prev" string seen in words, find the last visited integer in words which is defined as follows:
    
     * Let k be the number of consecutive "prev" strings seen so far (containing the current string). Let nums be the 0-indexed array of integers seen so far and nums_reverse be the reverse of nums, then the integer at (k - 1)th index of nums_reverse will be the last visited integer for this "prev".
     * If k is greater than the total visited integers, then the last visited integer will be -1.
    
    Return an integer array containing the last visited integers.
    
    Example 1:
    
    Input: words = ["1","2","prev","prev","prev"]
    Output: [2,1,-1]
    Explanation:
    For "prev" at index = 2, last visited integer will be 2 as here the number of consecutive "prev" strings is 1, and in the array reverse_nums, 2 will be the first element.
    For "prev" at index = 3, last visited integer will be 1 as there are a total of two consecutive "prev" strings including this "prev" which are visited, and 1 is the second last visited integer.
    For "prev" at index = 4, last visited integer will be -1 as there are a total of three consecutive "prev" strings including this "prev" which are visited, but the total number of integers visited is two.
    
    Example 2:
    
    Input: words = ["1","prev","2","prev","prev"]
    Output: [1,2,1]
    Explanation:
    For "prev" at index = 1, last visited integer will be 1.
    For "prev" at index = 3, last visited integer will be 2.
    For "prev" at index = 4, last visited integer will be 1 as there are a total of two consecutive "prev" strings including this "prev" which are visited, and 1 is the second last visited integer.
    
    
    Constraints:
    
     * 1 <= words.length <= 100
     * words[i] == "prev" or 1 <= int(words[i]) <= 100
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['1', '2', 'prev', 'prev', 'prev']) == [2,1,-1]
    assert candidate(['1', 'prev', '2', 'prev', 'prev']) == [1,2,1]
    assert candidate(['prev', 'prev', 'prev', '27']) == [-1,-1,-1]
    assert candidate(['17', '42']) == []
    assert candidate(['prev']) == [-1]
    assert candidate(['prev', 'prev', 'prev', '52', 'prev']) == [-1,-1,-1,52]
    assert candidate(['prev', 'prev', '68', 'prev', 'prev', '53', '40', '23', 'prev']) == [-1,-1,68,-1,23]
    assert candidate(['99', '23', 'prev']) == [23]
    assert candidate(['prev', 'prev', 'prev', '58', '99', 'prev', '10', 'prev']) == [-1,-1,-1,99,10]
    assert candidate(['prev', '51', 'prev', 'prev']) == [-1,51,-1]
    assert candidate(['prev', '46', '9', 'prev']) == [-1,9]
    assert candidate(['prev', 'prev', 'prev', 'prev', 'prev', '26']) == [-1,-1,-1,-1,-1]
    assert candidate(['prev', '21', 'prev', '76', '82', 'prev', '96', 'prev', '57', 'prev']) == [-1,21,82,96,57]
    assert candidate(['52', '4', 'prev', 'prev', 'prev', '69']) == [4,52,-1]
    assert candidate(['24', 'prev']) == [24]
    assert candidate(['46', 'prev', '78', 'prev', '83', '21', 'prev', '94', '50']) == [46,78,21]
    assert candidate(['14', '66', 'prev', 'prev', '46', 'prev']) == [66,14,46]
    assert candidate(['35', '90']) == []
    assert candidate(['prev', '9', 'prev', '8', 'prev']) == [-1,9,8]
    assert candidate(['prev', 'prev', '88', '71', '47', '65', '24', '39']) == [-1,-1]
    assert candidate(['45', '73', '78', '2', '54', 'prev', '85', '62', 'prev']) == [54,62]
    assert candidate(['prev', 'prev', '80', '9', 'prev']) == [-1,-1,9]
    assert candidate(['79', '19', 'prev', 'prev', 'prev', '67', 'prev', '16', '2']) == [19,79,-1,67]
    assert candidate(['94', 'prev', 'prev', 'prev', 'prev', 'prev', 'prev']) == [94,-1,-1,-1,-1,-1]
    assert candidate(['prev', 'prev', 'prev', '82', 'prev']) == [-1,-1,-1,82]
    assert candidate(['94', '14', '81', '43', 'prev', '43', 'prev']) == [43,43]
    assert candidate(['prev', 'prev', '94', '56', 'prev', '32', 'prev', 'prev', 'prev']) == [-1,-1,56,32,56,94]
    assert candidate(['93']) == []
    assert candidate(['46', '91', '3', '40', '31', 'prev']) == [31]
    assert candidate(['41', 'prev', '17', '58', '78']) == [41]
    assert candidate(['prev', 'prev', '82', '41', '96', '89', '71']) == [-1,-1]
    assert candidate(['4', 'prev', '50', 'prev', 'prev']) == [4,50,4]
    assert candidate(['59', '76', 'prev', '29', 'prev']) == [76,29]
    assert candidate(['prev', '62']) == [-1]
    assert candidate(['6', 'prev']) == [6]
    assert candidate(['prev', 'prev', 'prev', 'prev', 'prev']) == [-1,-1,-1,-1,-1]
    assert candidate(['28', '5', '35', 'prev', '41', '27', '70', '65', '84']) == [35]
    assert candidate(['94', '45', 'prev', '61']) == [45]
    assert candidate(['prev', '34', 'prev', 'prev', 'prev', 'prev', '21', 'prev']) == [-1,34,-1,-1,-1,21]
    assert candidate(['prev', '12', '100', '33', 'prev', '85', '93']) == [-1,33]
    assert candidate(['26']) == []
    assert candidate(['27', 'prev', 'prev', 'prev']) == [27,-1,-1]
    assert candidate(['prev', 'prev', '22', '33', 'prev', 'prev', 'prev']) == [-1,-1,33,22,-1]
    assert candidate(['30', 'prev', '87', 'prev', '19', 'prev', '8', 'prev', '81']) == [30,87,19,8]
    assert candidate(['35', 'prev', '47', '82', '86', '84', 'prev', '76', 'prev']) == [35,84,76]
    assert candidate(['prev', '87']) == [-1]
    assert candidate(['prev', '69', '78', 'prev', 'prev', '16']) == [-1,78,69]
    assert candidate(['22', '97', 'prev', '2']) == [97]
    assert candidate(['72', '74']) == []
    assert candidate(['84', 'prev', 'prev', '21']) == [84,-1]
    assert candidate(['64', '24']) == []
    assert candidate(['17', 'prev', '59', 'prev', '51', '11', 'prev', 'prev']) == [17,59,11,51]
    assert candidate(['57', 'prev', '27', '30', 'prev', 'prev', '75']) == [57,30,27]
    assert candidate(['65', 'prev', 'prev']) == [65,-1]
    assert candidate(['prev', '53', '76', '54', '94', '77']) == [-1]
    assert candidate(['89', '51', 'prev', 'prev', '12', 'prev', 'prev']) == [51,89,12,51]
    assert candidate(['prev', '28', '25', 'prev', 'prev', 'prev']) == [-1,25,28,-1]
    assert candidate(['51', 'prev', 'prev', '76']) == [51,-1]
    assert candidate(['2', '24', '63', 'prev', '43', '19', 'prev']) == [63,19]
    assert candidate(['prev', '38', '1']) == [-1]
    assert candidate(['56', '75', 'prev', 'prev', '94']) == [75,56]
    assert candidate(['prev', 'prev', 'prev']) == [-1,-1,-1]
    assert candidate(['prev', '37', '25', '31', 'prev', 'prev', '42']) == [-1,31,25]
    assert candidate(['73', '30', 'prev', '20', 'prev', 'prev']) == [30,20,30]
    assert candidate(['85', 'prev', 'prev', '78', 'prev', '100', '8', '17', 'prev']) == [85,-1,78,17]
    assert candidate(['prev', '55', 'prev', '87', '19', 'prev', '13', 'prev', 'prev']) == [-1,55,19,13,19]
    assert candidate(['prev', 'prev', '5', 'prev', 'prev', 'prev', '80', '17']) == [-1,-1,5,-1,-1]
    assert candidate(['100', '3', 'prev', 'prev', '93', '35', 'prev', 'prev']) == [3,100,35,93]
    assert candidate(['75', '7']) == []
    assert candidate(['prev', 'prev', 'prev', 'prev', 'prev', 'prev', '71', 'prev', '27']) == [-1,-1,-1,-1,-1,-1,71]
    assert candidate(['prev', 'prev', 'prev', '91', '44', 'prev']) == [-1,-1,-1,44]
    assert candidate(['prev', 'prev']) == [-1,-1]
    assert candidate(['11', 'prev', '87', 'prev', 'prev', '94', 'prev', '68']) == [11,87,11,94]
    assert candidate(['78']) == []
    assert candidate(['prev', 'prev', '73', 'prev', 'prev', '27', 'prev']) == [-1,-1,73,-1,27]
    assert candidate(['prev', '70', 'prev', 'prev']) == [-1,70,-1]
    assert candidate(['68', 'prev', '38', 'prev', 'prev']) == [68,38,68]
    assert candidate(['prev', 'prev', '36']) == [-1,-1]
    assert candidate(['prev', 'prev', '36', 'prev']) == [-1,-1,36]
    assert candidate(['18', '58', '41', 'prev', 'prev']) == [41,58]
    assert candidate(['prev', 'prev', '35']) == [-1,-1]
    assert candidate(['prev', '72', 'prev', '96', '9', '50', 'prev', '52']) == [-1,72,50]
    assert candidate(['92', '95', '47', '48', 'prev', '50', '34', 'prev', 'prev', '46']) == [48,34,50]
    assert candidate(['36', '88', '15', '99', '48']) == []
    assert candidate(['93', 'prev', '2', '58', '83', '90', 'prev']) == [93,90]
    assert candidate(['prev', '68', 'prev']) == [-1,68]
    assert candidate(['prev', '56', 'prev', 'prev', '36', 'prev']) == [-1,56,-1,36]
    assert candidate(['53', 'prev']) == [53]
    assert candidate(['5', '29', '94', '3', '48', 'prev', '59', '90', 'prev', '69']) == [48,90]
    assert candidate(['89', 'prev', 'prev', '75', 'prev', '98', '80', 'prev', '68', '33']) == [89,-1,75,80]
    assert candidate(['prev', '93', 'prev', '74', '33']) == [-1,93]
    assert candidate(['prev', 'prev', '10', '25', 'prev', '54', 'prev', 'prev', 'prev', '76']) == [-1,-1,25,54,25,10]
    assert candidate(['9', 'prev', '14', 'prev']) == [9,14]
    assert candidate(['prev', 'prev', 'prev', '18', '66', '92', 'prev', '87', '85', '25']) == [-1,-1,-1,92]
    assert candidate(['prev', 'prev', 'prev', '16', 'prev']) == [-1,-1,-1,16]
    assert candidate(['prev', 'prev', '99', 'prev', '82', 'prev', 'prev']) == [-1,-1,99,82,99]
    assert candidate(['prev', '5', '90', '71', 'prev', 'prev', '61']) == [-1,71,90]
    assert candidate(['prev', 'prev', '71', '54', 'prev', '20', '65', 'prev', 'prev']) == [-1,-1,54,65,20]
    assert candidate(['prev', '85', 'prev', '93', 'prev', '98', 'prev']) == [-1,85,93,98]
    assert candidate(['prev', 'prev', '34', 'prev']) == [-1,-1,34]


def test_check():
    check(lastVisitedIntegers)


### Metadata below ###
# question_id = 3164
# question_title = Last Visited Integers
# question_title_slug = last-visited-integers
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 74
# question_dislikes = 139