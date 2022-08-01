#!/bin/bash
# A simple program which should return the value of x if n is 
# a prime number and should return the value of y otherwise.
# Examples:
# for x_or_y(7, 34, 12) == 34
# for x_or_y(15, 8, 5) == 5
#
# $1 is an integer
# $2 is an integer
# $3 is an integer
x_or_y() {
    if [ $1 -eq 2 ] || [ $1 -eq 3 ] || [ $1 -eq 5 ] || [ $1 -eq 7 ] || [ $1 -eq 11 ] || [ $1 -eq 13 ] || [ $1 -eq 17 ] || [ $1 -eq 19 ] || [ $1 -eq 23 ] || [ $1 -eq 29 ] || [ $1 -eq 31 ] || [ $1 -eq 37 ] || [ $1 -eq 41 ] || [ $1 -eq 43 ] || [ $1 -eq 47 ] || [ $1 -eq 53 ] || [ $1 -eq 59 ] || [ $1 -eq 61 ] || [ $1 -eq 67 ] || [ $1 -eq 71 ] || [ $1 -eq 73 ] || [ $1 -eq 79 ] || [ $1 -eq 83 ] || [ $1 -eq 89 ] || [ $1 -eq 97 ] || [ $1 -eq 101 ] || [ $1 -eq 103 ] || [ $1 -eq 107 ] || [ $1 -eq 109 ] || [ $1 -eq 113 ] || [ $1 -eq 127 ] || [ $1 -eq 131 ] || [ $1 -eq 137 ] || [ $1 -eq 139 ] || [ $1 -eq 149 ] || [ $1 -eq 151 ] || [ $1 -eq 157 ] || [ $1 -eq 163 ] || [ $1 -eq 167 ] || [ $1 -eq 173 ] || [ $1 -eq 179 ] || [ $1 -eq 181 ] || [ $1 -eq 191 ] || [ $1 -eq 193 ] || [ $1 -eq 197 ] || [ $1 -eq 199 ] || [ $1 -eq 211 ] || [ $1 -eq 223 ] || [ $1 -eq 227 ] || [ $1 -eq 229 ] || [ $1 -eq 233 ] || [ $1 -eq 239 ] || [ $1 -eq 241 ] || [ $1 -eq 251 ] || [ $1 -eq 257 ] || [ $1 -eq 263 ] || [ $1 -eq 269 ] || [ $1 -eq 271 ] || [ $1 -eq 277 ] || [ $1 -eq 281 ] || [ $1 -eq 283 ] || [ $1 -eq 293 ] || [

}

candidate() {
    x_or_y "$@"
}

run_test() {
    [[ $(candidate 7 34 12) = 34 ]]
    [[ $(candidate 15 8 5) = 5 ]]
    [[ $(candidate 3 33 5212) = 33 ]]
    [[ $(candidate 1259 3 52) = 3 ]]
    [[ $(candidate 7919 -1 12) = -1 ]]
    [[ $(candidate 3609 1245 583) = 583 ]]
    [[ $(candidate 91 56 129) = 129 ]]
    [[ $(candidate 6 34 1234) = 1234 ]]
    [[ $(candidate 1 2 0) = 0 ]]
    [[ $(candidate 2 2 0) = 2 ]]
}

run_test