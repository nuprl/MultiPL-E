def valid_date(date: str) -> bool:
    """You have to write a function which validates a given date string and
    returns True if the date is valid otherwise False.
    The date is valid if all of the following rules are satisfied:
    1. The date string is not empty.
    2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
    3. The months should not be less than 1 or higher than 12.
    4. The date should be in the format: mm-dd-yyyy

    for example: 
    valid_date('03-11-2000') => True

    valid_date('15-01-2012') => False

    valid_date('04-0-2040') => False

    valid_date('06-04-2020') => True

    valid_date('06/04/2020') => False
    """
    # Write your code here
    pass



def check(candidate):
    assert candidate('03-11-2000') == True
    assert candidate('15-01-2012') == False
    assert candidate('04-0-2040') == False
    assert candidate('06-04-2020') == True
    assert candidate('01-01-2007') == True
    assert candidate('03-32-2011') == False
    assert candidate('') == False
    assert candidate('04-31-3000') == False
    assert candidate('06-06-2005') == True
    assert candidate('21-31-2000') == False
    assert candidate('04-12-2003') == True
    assert candidate('04122003') == False
    assert candidate('20030412') == False
    assert candidate('2003-04') == False
    assert candidate('2003-04-12') == False
    assert candidate('04-2003') == False

def test_check():
    check(valid_date)

test_check()
