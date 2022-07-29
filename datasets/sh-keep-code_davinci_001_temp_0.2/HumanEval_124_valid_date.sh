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
valid_date() {
    if [[ $1 =~ ^[0-9]{2}-[0-9]{2}-[0-9]{4}$ ]]; then
        if [[ $1 =~ ^(0[1-9]|1[0-2])-[0-9]{2}-[0-9]{4}$ ]]; then
            if [[ $1 =~ ^(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])-[0-9]{4}$ ]]; then
                if [[ $1 =~ ^(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])-[0-9]{4}$ ]]; then
                    echo "True"
                else
                    echo "False"
                fi
            else
                echo "False"
            fi
        else
            echo "False"
        fi
    else
        echo "False"
    fi

}

candidate() {
    local res=$(valid_date "$@")
    echo $res
}

test() {
        x0=$(candidate "03-11-2000")
    assert_equals true "${x0[*]}"

        x1=$(candidate "15-01-2012")
    assert_equals false "${x1[*]}"

        x2=$(candidate "04-0-2040")
    assert_equals false "${x2[*]}"

        x3=$(candidate "06-04-2020")
    assert_equals true "${x3[*]}"

        x4=$(candidate "01-01-2007")
    assert_equals true "${x4[*]}"

        x5=$(candidate "03-32-2011")
    assert_equals false "${x5[*]}"

        x6=$(candidate "")
    assert_equals false "${x6[*]}"

        x7=$(candidate "04-31-3000")
    assert_equals false "${x7[*]}"

        x8=$(candidate "06-06-2005")
    assert_equals true "${x8[*]}"

        x9=$(candidate "21-31-2000")
    assert_equals false "${x9[*]}"

        x10=$(candidate "04-12-2003")
    assert_equals true "${x10[*]}"

        x11=$(candidate "04122003")
    assert_equals false "${x11[*]}"

        x12=$(candidate "20030412")
    assert_equals false "${x12[*]}"

        x13=$(candidate "2003-04")
    assert_equals false "${x13[*]}"

        x14=$(candidate "2003-04-12")
    assert_equals false "${x14[*]}"

        x15=$(candidate "04-2003")
    assert_equals false "${x15[*]}"

}