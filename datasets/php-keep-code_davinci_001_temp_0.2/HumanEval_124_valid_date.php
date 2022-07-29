<?php
// You have to write a function which validates a given date string and
// returns True if the date is valid otherwise False.
// The date is valid if all of the following rules are satisfied:
// 1. The date string is not empty.
// 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
// 3. The months should not be less than 1 or higher than 12.
// 4. The date should be in the format: mm-dd-yyyy
// for example: 
// valid_date('03-11-2000') => True
// valid_date('15-01-2012') => False
// valid_date('04-0-2040') => False
// valid_date('06-04-2020') => True
// valid_date('06/04/2020') => False
function valid_date($date) {
	if(empty($date)) {
		return false;
	}
	$date = explode('-', $date);
	if(count($date) != 3) {
		return false;
	}
	if(!is_numeric($date[0]) || !is_numeric($date[1]) || !is_numeric($date[2])) {
		return false;
	}
	if(!checkdate($date[0], $date[1], $date[2])) {
		return false;
	}
	return true;
}


function candidate(...$args) {
    return valid_date(...$args);
}

function test(): void {
    if (candidate("03-11-2000") !== true) { throw new Exception("Test failed!"); }
    if (candidate("15-01-2012") !== false) { throw new Exception("Test failed!"); }
    if (candidate("04-0-2040") !== false) { throw new Exception("Test failed!"); }
    if (candidate("06-04-2020") !== true) { throw new Exception("Test failed!"); }
    if (candidate("01-01-2007") !== true) { throw new Exception("Test failed!"); }
    if (candidate("03-32-2011") !== false) { throw new Exception("Test failed!"); }
    if (candidate("") !== false) { throw new Exception("Test failed!"); }
    if (candidate("04-31-3000") !== false) { throw new Exception("Test failed!"); }
    if (candidate("06-06-2005") !== true) { throw new Exception("Test failed!"); }
    if (candidate("21-31-2000") !== false) { throw new Exception("Test failed!"); }
    if (candidate("04-12-2003") !== true) { throw new Exception("Test failed!"); }
    if (candidate("04122003") !== false) { throw new Exception("Test failed!"); }
    if (candidate("20030412") !== false) { throw new Exception("Test failed!"); }
    if (candidate("2003-04") !== false) { throw new Exception("Test failed!"); }
    if (candidate("2003-04-12") !== false) { throw new Exception("Test failed!"); }
    if (candidate("04-2003") !== false) { throw new Exception("Test failed!"); }
}

test();