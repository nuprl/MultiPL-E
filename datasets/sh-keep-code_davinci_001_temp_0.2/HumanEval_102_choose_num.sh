#!/bin/bash
# This function takes two positive numbers x and y and returns the
# biggest even integer number that is in the range [x, y] inclusive. If 
# there's no such number, then the function should return -1.
# For example:
# choose_num(12, 15) = 14
# choose_num(13, 12) = -1
choose_num() {
    # Check if the first argument is a positive integer
    if [[ $1 =~ ^[0-9]+$ ]] && [[ $1 -gt 0 ]]; then
        # Check if the second argument is a positive integer
        if [[ $2 =~ ^[0-9]+$ ]] && [[ $2 -gt 0 ]]; then
            # Check if the first argument is less than the second argument
            if [[ $1 -lt $2 ]]; then
                # Check if the first argument is even
                if [[ $(($1 % 2)) == 0 ]]; then
                    # Check if the second argument is even
                    if [[ $(($2 % 2)) == 0 ]]; then
                        # Check if the first argument is less than or equal to the second argument divided by 2
                        if [[ $1 -le $(( $2 / 2 )) ]]; then
                            # Check if the second argument is less than or equal to the first argument divided by 2
                            if [[ $2 -le $(( $1 / 2 )) ]]; then
                                # Check if the first argument is equal to the second argument divided by 2
                                if [[ $1 -eq $(( $2 / 2 )) ]]; then
                                    echo $1
                                else
                                    # Check if the first argument is less than the second argument divided by 2
                                    if [[ $1 -lt $(( $2 / 2 )) ]]; then
                                        echo $1
                                    else
                                        echo $(( $2 / 2 ))
                                    fi
                                fi
                            else
                                echo $(( $1 / 2 ))
                            fi
                        else
                            echo $(( $2 / 2 ))
                        fi
                    else
                        echo $1
                    fi
                else
                    echo $1
                fi
            else
                echo -1
            fi
        else
            echo -1
        fi
    else
        echo -1
    fi

}

candidate() {
    local res=$(choose_num "$@")
    echo $res
}

test() {
        x0=$(candidate 12 15)
    assert_equals 14 "${x0[*]}"

        x1=$(candidate 13 12)
    assert_equals -1 "${x1[*]}"

        x2=$(candidate 33 12354)
    assert_equals 12354 "${x2[*]}"

        x3=$(candidate 5234 5233)
    assert_equals -1 "${x3[*]}"

        x4=$(candidate 6 29)
    assert_equals 28 "${x4[*]}"

        x5=$(candidate 27 10)
    assert_equals -1 "${x5[*]}"

        x6=$(candidate 7 7)
    assert_equals -1 "${x6[*]}"

        x7=$(candidate 546 546)
    assert_equals 546 "${x7[*]}"

}