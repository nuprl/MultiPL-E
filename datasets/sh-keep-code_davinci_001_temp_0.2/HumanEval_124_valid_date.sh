#!/bin/bash
# You have to write a function which validates a given date string and
# returns True if the date is valid otherwise False.
# The date is valid if all of the following rules are satisfied:
# 1. The date string is not empty.
# 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
# 3. The months should not be less than 1 or higher than 12.
# 4. The date should be in the format: mm-dd-yyyy
# for example: 
# valid_date('03-11-2000') => True
# valid_date('15-01-2012') => False
# valid_date('04-0-2040') => False
# valid_date('06-04-2020') => True
# valid_date('06/04/2020') => False
#
# $1 is a string
valid_date() {
    # Write your code here
    if [ -z "$1" ]; then
        return 1
    fi
    if [[ $1 =~ ^[0-9]{2}-[0-9]{2}-[0-9]{4}$ ]]; then
        month=${1:0:2}
        day=${1:3:2}
        year=${1:6:4}
        if [ $month -lt 1 ] || [ $month -gt 12 ]; then
            return 1
        fi
        if [ $day -lt 1 ] || [ $day -gt 31 ]; then
            return 1
        fi
        if [ $month -eq 2 ]; then
            if [ $day -lt 1 ] || [ $day -gt 29 ]; then
                return 1
            fi
        fi
        if [ $month -eq 4 ] || [ $month -eq 6 ] || [ $month -eq 9 ] || [ $month -eq 11 ]; then
            if [ $day -lt 1 ] || [ $day -gt 30 ]; then
                return 1
            fi
        fi
        if [ $year -lt 1 ] || [ $year -gt 9999 ]; then
            return 1
        fi
        return 0
    else
        return 1
    fi

}

candidate() {
    valid_date "$@"
}

set -e
run_test() {
    [[ $(candidate "03-11-2000") = "true" ]]
    [[ $(candidate "15-01-2012") = "false" ]]
    [[ $(candidate "04-0-2040") = "false" ]]
    [[ $(candidate "06-04-2020") = "true" ]]
    [[ $(candidate "01-01-2007") = "true" ]]
    [[ $(candidate "03-32-2011") = "false" ]]
    [[ $(candidate "") = "false" ]]
    [[ $(candidate "04-31-3000") = "false" ]]
    [[ $(candidate "06-06-2005") = "true" ]]
    [[ $(candidate "21-31-2000") = "false" ]]
    [[ $(candidate "04-12-2003") = "true" ]]
    [[ $(candidate "04122003") = "false" ]]
    [[ $(candidate "20030412") = "false" ]]
    [[ $(candidate "2003-04") = "false" ]]
    [[ $(candidate "2003-04-12") = "false" ]]
    [[ $(candidate "04-2003") = "false" ]]
}

run_test