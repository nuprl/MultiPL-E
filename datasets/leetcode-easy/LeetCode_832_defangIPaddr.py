def defangIPaddr(address: str) -> str:
    """
    Given a valid (IPv4) IP address, return a defanged version of that IP address.
    A defanged IP address replaces every period "." with "[.]".
 
    Example 1:
    Input: address = "1.1.1.1"
    Output: "1[.]1[.]1[.]1"
    Example 2:
    Input: address = "255.100.50.0"
    Output: "255[.]100[.]50[.]0"

 
    Constraints:

    The given address is a valid IPv4 address.
    """
    ### Canonical solution below ###
    return address.replace('.', '[.]')




### Unit tests below ###
def check(candidate):
	assert candidate("127.0.0.1") == "127[.]0[.]0[.]1"
	assert candidate("198.6.1.0") == "198[.]6[.]1[.]0"
	assert candidate("198.6.1.13") == "198[.]6[.]1[.]13"
	assert candidate(
    "192.0.2.60") == "192[.]0[.]2[.]60"
	assert candidate("198.6.1.3") == "198[.]6[.]1[.]3"
	assert candidate("255.255.255.255") == "255[.]255[.]255[.]255"
	assert candidate("198.6.1.10") == "198[.]6[.]1[.]10"
	assert candidate("10.0.0.2") == "10[.]0[.]0[.]2"
	assert candidate("10.0.0.255") == "10[.]0[.]0[.]255"
	assert candidate("255.100.50.0") == "255[.]100[.]50[.]0"
	assert candidate("198.6.1.8") == "198[.]6[.]1[.]8"
	assert candidate(
    "198.6.1.9") == "198[.]6[.]1[.]9"
	assert candidate("8.8.8.8") == "8[.]8[.]8[.]8"
	assert candidate("172.16.254.1") == "172[.]16[.]254[.]1"
	assert candidate("198.6.1.7") == "198[.]6[.]1[.]7"
	assert candidate("198.6.1.6") == "198[.]6[.]1[.]6"
	assert candidate(
    "208.67.222.220") == "208[.]67[.]222[.]220"
	assert candidate("192.168.0.1") == "192[.]168[.]0[.]1"
	assert candidate("10.0.0.1") == "10[.]0[.]0[.]1"
	assert candidate("208.67.220.220") == "208[.]67[.]220[.]220"
	assert candidate("208.67.220.222") == "208[.]67[.]220[.]222"
	assert candidate("198.6.1.1") == "198[.]6[.]1[.]1"
	assert candidate("8.8.4.4") == "8[.]8[.]4[.]4"
	assert candidate("198.6.1.9") == "198[.]6[.]1[.]9"
	assert candidate("198.6.1.5") == "198[.]6[.]1[.]5"
	assert candidate("198.6.1.11") == "198[.]6[.]1[.]11"
	assert candidate(
    "208.67.220.220") == "208[.]67[.]220[.]220"
	assert candidate("208.67.222.222") == "208[.]67[.]222[.]222"
	assert candidate("0.0.0.0") == "0[.]0[.]0[.]0"
	assert candidate("169.254.169.254") == "169[.]254[.]169[.]254"
	assert candidate("198.6.1.4") == "198[.]6[.]1[.]4"
	assert candidate("1.1.1.1") == "1[.]1[.]1[.]1"
	assert candidate("198.6.1.12") == "198[.]6[.]1[.]12"
	assert candidate(
    "198.6.1.8") == "198[.]6[.]1[.]8"
	assert candidate("198.6.1.2") == "198[.]6[.]1[.]2"
def test_check():
	check(defangIPaddr)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
