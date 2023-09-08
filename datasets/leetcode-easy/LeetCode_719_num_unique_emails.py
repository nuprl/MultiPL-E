from typing import List


def num_unique_emails(emails: List[str]) -> int:
    """
    Every valid email consists of a local name and a domain name, separated by the '@' sign. Besides lowercase letters, the email may contain one or more '.' or '+'.

    For example, in "alice@leetcode.com", "alice" is the local name, and "leetcode.com" is the domain name.

    If you add periods '.' between some characters in the local name part of an email address, mail sent there will be forwarded to the same address without dots in the local name. Note that this rule does not apply to domain names.

    For example, "alice.z@leetcode.com" and "alicez@leetcode.com" forward to the same email address.

    If you add a plus '+' in the local name, everything after the first plus sign will be ignored. This allows certain emails to be filtered. Note that this rule does not apply to domain names.

    For example, "m.y+name@email.com" will be forwarded to "my@email.com".

    It is possible to use both of these rules at the same time.
    Given an array of strings emails where we send one email to each emails[i], return the number of different addresses that actually receive mails.
 
    Example 1:

    Input: emails = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
    Output: 2
    Explanation: "testemail@leetcode.com" and "testemail@lee.tcode.com" actually receive mails.

    Example 2:

    Input: emails = ["a@leetcode.com","b@leetcode.com","c@leetcode.com"]
    Output: 3

 
    Constraints:

    1 <= emails.length <= 100
    1 <= emails[i].length <= 100
    emails[i] consist of lowercase English letters, '+', '.' and '@'.
    Each emails[i] contains exactly one '@' character.
    All local and domain names are non-empty.
    Local names do not start with a '+' character.
    Domain names end with the ".com" suffix.

    """
    ### Canonical solution below ###
    unique_emails = set()

    for email in emails:
        local_name, domain_name = email.split("@")
        local_name = local_name.split("+")[0]
        local_name = local_name.replace(".", "")

        unique_emails.add(local_name + "@" + domain_name)

    return len(unique_emails)




### Unit tests below ###
def check(candidate):
	assert candidate(["a+b@a.com", "a+b@b.com"]) == 2
	assert candidate(["test.email+alex@leetcode.com", "test.email.leet+alex@code.com"]) == 2
	assert candidate(["a.b+c@b.com","a.b+c@b.com"]) == 1
	assert candidate(["a@a.com", "a+b@a.com", "a.c@a.com", "a.c+b@a.com"]) == 2
	assert candidate(["a@leetcode.com", "b@leetcode.com", "a@leetcode.com"]) == 2
	assert candidate(["ab@cd.com", "ef@cd.com", "ab@cd.com"]) == 2
	assert candidate(["ab@cd.com", "ef@cd.com", "ab@ef.com"]) == 3
	assert candidate(["test.email+alex@leetcode.com", "test.email@leetcode.com"]) == 1
	assert candidate(["a@leetcode.com", "b@leetcode.com", "c@leetcode.com", "a+b@abc.com", "d@e.com", "a@leetcode.com"]) == 5
	assert candidate(["email@domain.com", "e.mail@domain.com", "e.mail+bob@domain.com"]) == 1
	assert candidate(["a@leetcode.com", "b@leetcode.com", "c@leetcode.com"]) == 3
	assert candidate(["test.email+alex@leetcode.com","test.email.leet+alex@code.com","test.email+alex@lc.com"]) == 3
	assert candidate(["a@a.com", "a+b@a.com", "a+b+c@a.com"]) == 1
	assert candidate(["test.email+alex@leetcode.com", "test.email.leet+alex@code.com", "test.email.leet.alex@code.com"]) == 3
	assert candidate(["test.email+alex@leetcode.com","test.email.leet+alex@code.com","test.email+alex@lc.com","test.email.joe@lc.com"]) == 4
	assert candidate(["test.email+alex@leetcode.com", "test.email.leet+alex@code.com", "test.email.leet.alex@code.com", "test.email.leet.alex@code.com"]) == 3
	assert candidate(["a+b@abc.com", "a+b@abc.com", "a+b@abc.com", "a+b@abc.com"]) == 1
	assert candidate(["a+b@a.com", "b@b.com"]) == 2
	assert candidate(["test.email+alex@leetcode.com","test.email.leet+alex@code.com","test.e.mail+bob@cse.com","testemail+david@lee.tcode.com"]) == 4
	assert candidate(["a+b@a.com", "a+c@b.com"]) == 2
	assert candidate(["test.email+alex@leetcode.com", "test.e.mail+bob@cse.com"]) == 2
	assert candidate(["a@a.com", "b@b.com", "c@c.com"]) == 3
	assert candidate(["a@leetcode.com","b@leetcode.com","c@leetcode.com"]) == 3
	assert candidate(["a@a.com", "a+b@a.com", "a+b@b.com", "a+b+c@c.com"]) == 3
	assert candidate(["a@a.com", "a@a.com", "a@a.com"]) == 1
	assert candidate(["a.b+c@b.com", "a.b+c@b.com","a.b+d@a.com", "a.b+d@a.com"]) == 2
	assert candidate(["test.email+alex@leetcode.com","test.email@leetcode.com"]) == 1
	assert candidate(["a@b.com", "a@c.com", "a@b.com"]) == 2
	assert candidate([]) == 0
	assert candidate(["test.email@leetcode.com", "test.email@leetcode.com"]) == 1
	assert candidate(["a@a.com", "a+b@a.com", "a.b+c@a.com", "a.b+c@b.com", "a.b+d@a.com"]) == 3
def test_check():
	check(num_unique_emails)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,string
# Metadata Coverage: 100
