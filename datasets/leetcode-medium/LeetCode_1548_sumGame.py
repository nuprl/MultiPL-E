def sumGame(num: str) -> bool:
    """
    Alice and Bob take turns playing a game, with Alice starting first.
    You are given a string num of even length consisting of digits and '?' characters. On each turn, a player will do the following if there is still at least one '?' in num:

    Choose an index i where num[i] == '?'.
    Replace num[i] with any digit between '0' and '9'.

    The game ends when there are no more '?' characters in num.
    For Bob to win, the sum of the digits in the first half of num must be equal to the sum of the digits in the second half. For Alice to win, the sums must not be equal.

    For example, if the game ended with num = "243801", then Bob wins because 2+4+3 = 8+0+1. If the game ended with num = "243803", then Alice wins because 2+4+3 != 8+0+3.

    Assuming Alice and Bob play optimally, return true if Alice will win and false if Bob will win.
 
    Example 1:

    Input: num = "5023"
    Output: false
    Explanation: There are no moves to be made.
    The sum of the first half is equal to the sum of the second half: 5 + 0 = 2 + 3.

    Example 2:

    Input: num = "25??"
    Output: true
    Explanation: Alice can replace one of the '?'s with '9' and it will be impossible for Bob to make the sums equal.

    Example 3:

    Input: num = "?3295???"
    Output: false
    Explanation: It can be proven that Bob will always win. One possible outcome is:
    - Alice replaces the first '?' with '9'. num = "93295???".
    - Bob replaces one of the '?' in the right half with '9'. num = "932959??".
    - Alice replaces one of the '?' in the right half with '2'. num = "9329592?".
    - Bob replaces the last '?' in the right half with '7'. num = "93295927".
    Bob wins because 9 + 3 + 2 + 9 = 5 + 9 + 2 + 7.

 
    Constraints:

    2 <= num.length <= 105
    num.length is even.
    num consists of only digits and '?'.

    """
    ### Canonical solution below ###
    n = len(num)
    sum1, sum2, cnt1, cnt2 = 0, 0, 0, 0

    for i in range(n // 2):
        if num[i] == '?':
            cnt1 += 1
        else:
            sum1 += int(num[i])

    for i in range(n // 2, n):
        if num[i] == '?':
            cnt2 += 1
        else:
            sum2 += int(num[i])

    return (sum1 - sum2) != ((cnt2 - cnt1) // 2) * 9




### Unit tests below ###
def check(candidate):
	assert candidate("12?34?6789") == True
	assert candidate("?1????") == True
	assert candidate("1?2?3?4?5?6?") == True
	assert candidate("9????1?") == True
	assert candidate("?4?2?30") == True
	assert candidate("??295??") == True
	assert candidate("5???6?9?") == True
	assert candidate("3?2?76") == True
	assert candidate("34??59?8?") == True
	assert candidate("5??") == True
	assert candidate("?22?456?") == True
	assert candidate("1???3") == True
	assert candidate("41??7?") == True
	assert candidate("?55?") == False
	assert candidate("?0?3?") == True
	assert candidate("123????67?89") == True
	assert candidate("???1?1?111") == True
	assert candidate("97?3????2?") == True
	assert candidate("12345678??90") == True
	assert candidate("??7?") == True
	assert candidate("2??3?5?") == True
	assert candidate("21543?8?") == True
	assert candidate("?22?45?6") == True
	assert candidate("??????2?") == True
	assert candidate("1234567??") == True
	assert candidate("?4?2?3?") == True
	assert candidate("7?") == True
	assert candidate("??00??") == False
	assert candidate("12????") == True
	assert candidate("1234??56") == True
	assert candidate("2?31?") == True
	assert candidate("511?5?4????") == True
	assert candidate("12??3456789") == True
	assert candidate("?0??????") == False
	assert candidate("??????") == False
	assert candidate("12345??67") == True
	assert candidate("25??") == True
	assert candidate("?1?7????") == True
	assert candidate("12??3456?") == True
	assert candidate("51??1?") == True
	assert candidate("?1?2?3") == True
	assert candidate("1??324") == True
	assert candidate("12??45??78") == True
	assert candidate("243801") == False
	assert candidate("9?01??") == True
	assert candidate("111?1?11?111") == True
	assert candidate("1234567??89") == True
	assert candidate("12??456?") == True
	assert candidate("???????") == False
	assert candidate("???11?1?111") == True
	assert candidate("12??3456?89") == True
	assert candidate("?5????") == True
	assert candidate("1?2?3?4?5?6?7?") == True
	assert candidate("71???3??") == True
	assert candidate("23571?????????????4234523452345234523452345234523452345234523452") == True
	assert candidate("??3?5??") == True
	assert candidate("1?2?3?4?") == True
	assert candidate("1?2?3?4?5?") == True
	assert candidate("45763?") == True
	assert candidate("12??456") == True
	assert candidate("?????6?8?") == True
	assert candidate("5023") == False
	assert candidate("1??2?3456789") == True
	assert candidate("?00112?4?11?1?4") == True
	assert candidate("?????") == False
	assert candidate("????????") == False
	assert candidate("123456??78") == True
	assert candidate("????") == False
	assert candidate("31??5?7") == True
	assert candidate("?????????") == False
	assert candidate("105??1????") == True
	assert candidate("2????3") == True
	assert candidate("??11??") == False
	assert candidate("9?0???????????????????????????") == False
	assert candidate("3241??") == True
	assert candidate("501?3?") == True
	assert candidate("5?1??1?") == True
	assert candidate("?97?3????2?") == True
	assert candidate("?????6?9?") == True
	assert candidate("?3295???") == False
	assert candidate("243803") == True
	assert candidate("?") == False
	assert candidate("??") == False
	assert candidate("1?2?3?4?5?6?7?8?") == True
	assert candidate("???") == False
	assert candidate("122??34") == True
	assert candidate("??????????") == False
	assert candidate("1234????") == True
	assert candidate("75????") == True
	assert candidate("23571000000000000000000000000000000000000000000000000000000000000") == True
	assert candidate("????????????????????????????107?9") == True
	assert candidate("12??34") == True
def test_check():
	check(sumGame)
# Metadata Difficulty: Medium
# Metadata Topics: math,greedy,game-theory
# Metadata Coverage: 100
