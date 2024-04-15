from typing import List

def countCompleteSubarrays(nums: List[int]) -> int:
    """
    You are given an array nums consisting of positive integers.
    
    We call a subarray of an array complete if the following condition is satisfied:
    
     * The number of distinct elements in the subarray is equal to the number of distinct elements in the whole array.
    
    Return the number of complete subarrays.
    
    A subarray is a contiguous non-empty part of an array.
    
    Example 1:
    
    Input: nums = [1,3,1,2,2]
    Output: 4
    Explanation: The complete subarrays are the following: [1,3,1,2], [1,3,1,2,2], [3,1,2] and [3,1,2,2].
    
    Example 2:
    
    Input: nums = [5,5,5,5]
    Output: 10
    Explanation: The array consists only of the integer 5, so any subarray is complete. The number of subarrays that we can choose is 10.
    
    
    Constraints:
    
     * 1 <= nums.length <= 1000
     * 1 <= nums[i] <= 2000
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 3, 1, 2, 2]) == 4
    assert candidate([5, 5, 5, 5]) == 10
    assert candidate([459, 459, 962, 1579, 1435, 756, 1872, 1597]) == 2
    assert candidate([1786, 1786, 1786, 114]) == 3
    assert candidate([1632, 1632, 528, 359, 1671, 1632, 511, 1087, 424, 1684]) == 3
    assert candidate([1430, 12, 1430, 1075, 1722]) == 2
    assert candidate([1917, 1917, 608, 608, 1313, 751, 558, 1561, 608]) == 4
    assert candidate([254, 1690, 1690, 1068, 1779]) == 1
    assert candidate([1116]) == 1
    assert candidate([1677, 1677, 1352, 1219, 1666, 1677, 1892, 1892, 319]) == 3
    assert candidate([1386, 1997, 1997, 574, 574, 1360, 989]) == 1
    assert candidate([50, 48, 1118, 540, 1248, 1984, 1698, 41, 1984, 186]) == 1
    assert candidate([273, 524, 40, 1323, 1323]) == 2
    assert candidate([246, 376, 828, 191, 1942, 210]) == 1
    assert candidate([463, 1497, 1676, 127, 1379, 17, 1075, 190]) == 1
    assert candidate([765, 1370]) == 1
    assert candidate([1110, 804, 1110, 839, 728, 839]) == 4
    assert candidate([1001]) == 1
    assert candidate([665, 867, 954, 1411, 728, 1006, 372, 1411]) == 2
    assert candidate([1213, 1203, 1277, 369, 1277]) == 2
    assert candidate([1898, 370, 822, 1659, 1360, 128, 370, 360, 261, 1898]) == 4
    assert candidate([1881, 1446]) == 1
    assert candidate([474, 315, 155, 155, 1986]) == 1
    assert candidate([1389, 1817, 401, 1067, 1356, 1997]) == 1
    assert candidate([1586, 1332, 1055, 1586, 1586, 1861, 892, 1445]) == 2
    assert candidate([1601, 1601]) == 3
    assert candidate([1417, 1417, 1160, 387, 928, 1572, 1832]) == 2
    assert candidate([1497, 1237, 1237, 946, 682, 331, 742]) == 1
    assert candidate([377, 377]) == 3
    assert candidate([356, 356, 356, 356, 356, 315]) == 5
    assert candidate([285]) == 1
    assert candidate([211, 211, 731, 226]) == 2
    assert candidate([1253, 188, 188, 5, 1393, 1696, 1062]) == 1
    assert candidate([90, 1297, 482, 482, 90, 1836, 1045, 1497, 482]) == 4
    assert candidate([1857, 273, 609, 609, 1803, 1491, 223, 609, 1857, 1052]) == 2
    assert candidate([617, 1014, 679, 934, 955]) == 1
    assert candidate([577, 577]) == 3
    assert candidate([1793, 997, 1082, 1411, 997, 546, 224, 336, 307, 336]) == 2
    assert candidate([1150, 1150]) == 3
    assert candidate([634]) == 1
    assert candidate([1454, 1789, 1454]) == 3
    assert candidate([1657, 1090, 1682, 1376, 547, 547, 407, 755, 1124, 1376]) == 2
    assert candidate([379]) == 1
    assert candidate([1673, 1584, 1584, 1055, 1971, 1122, 1086, 1692, 75]) == 1
    assert candidate([722, 1427]) == 1
    assert candidate([1641, 448, 1641, 1437, 448, 1406, 1437]) == 6
    assert candidate([1440, 704, 1440, 1440, 749]) == 2
    assert candidate([832, 832]) == 3
    assert candidate([1635, 1759, 1759, 1976, 700]) == 1
    assert candidate([1577, 1674, 1745, 156, 596, 1973, 1390, 156, 1497, 415]) == 1
    assert candidate([1646, 1991]) == 1
    assert candidate([1613, 881, 1660, 1270, 1783, 881, 773, 1783, 1229, 111]) == 1
    assert candidate([431]) == 1
    assert candidate([113]) == 1
    assert candidate([151]) == 1
    assert candidate([999, 701, 389, 999, 409, 488, 993, 999, 517, 1860]) == 2
    assert candidate([236, 596, 1263, 1563, 860, 596, 1184, 575]) == 1
    assert candidate([278, 338]) == 1
    assert candidate([939]) == 1
    assert candidate([1293, 564, 614, 694, 1386, 564]) == 2
    assert candidate([681, 448]) == 1
    assert candidate([1563, 558, 1778, 1404, 1973]) == 1
    assert candidate([1508, 1508, 649]) == 2
    assert candidate([1077, 445, 1947, 445, 789, 789, 789, 956, 1988, 189]) == 1
    assert candidate([1984, 526, 30, 1205, 1691, 1984, 1241, 280, 280, 1984]) == 6
    assert candidate([1802, 1876, 1143, 1802, 1012, 1876, 1802, 1821]) == 3
    assert candidate([1338, 901, 613, 575, 613]) == 2
    assert candidate([406, 406, 242, 242, 770, 1063, 1436, 1063, 1063]) == 6
    assert candidate([1235, 1235]) == 3
    assert candidate([1337, 1088, 1088, 892, 1209, 1269]) == 1
    assert candidate([1941, 1941]) == 3
    assert candidate([319]) == 1
    assert candidate([1891, 1891, 1748, 1748, 923, 1748, 923, 763, 1062, 1748]) == 4
    assert candidate([1111, 503, 1980]) == 1
    assert candidate([213, 1666, 469, 1675]) == 1
    assert candidate([769, 1774, 1654, 928, 1204]) == 1
    assert candidate([294, 294, 294, 294, 1351, 294, 1351, 62, 585]) == 6
    assert candidate([1197]) == 1
    assert candidate([21, 1549, 21, 1549, 1998, 1219, 1549, 1021]) == 3
    assert candidate([1124, 1124, 556, 1322, 556]) == 4
    assert candidate([908, 908, 863, 1977, 908, 8, 427, 1322]) == 3
    assert candidate([770]) == 1
    assert candidate([517, 1497, 334, 334, 996, 1497, 1394, 534]) == 1
    assert candidate([564, 750, 750, 750, 1965, 1965, 1402]) == 1
    assert candidate([403, 1080, 365, 1962, 1589, 1740, 1335, 1335, 1589]) == 3
    assert candidate([1712, 1621, 1295, 522, 1734, 522, 1371, 1935, 684]) == 1
    assert candidate([270, 1443, 807, 1704, 1487]) == 1
    assert candidate([1880, 1880, 1880, 604, 1634, 1412, 1880, 67, 1759, 1488]) == 4
    assert candidate([540, 1799, 1784, 1799, 972, 1786, 1578, 1480, 178, 532]) == 1
    assert candidate([1235, 471, 367]) == 1
    assert candidate([1887, 1373, 190, 1764, 1764, 959, 959, 1373, 17]) == 1
    assert candidate([1313, 910, 1172, 1541, 1758, 140, 1380, 492, 240, 1664]) == 1
    assert candidate([381, 1304, 381, 758, 1304, 381, 758]) == 14
    assert candidate([1517, 665]) == 1
    assert candidate([1555, 223, 379, 223, 379, 1982]) == 1
    assert candidate([1268, 1268, 1268, 1268]) == 10
    assert candidate([1051, 266, 266, 94, 761, 1051, 255]) == 3
    assert candidate([420, 945, 3, 172]) == 1
    assert candidate([1045, 1120, 1045, 511, 1045, 1777, 1224, 336, 560, 153]) == 2
    assert candidate([627, 592, 592, 1416, 370, 229, 526, 633]) == 1


def test_check():
    check(countCompleteSubarrays)


### Metadata below ###
# question_id = 2856
# question_title = Count Complete Subarrays in an Array
# question_title_slug = count-complete-subarrays-in-an-array
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 464
# question_dislikes = 9