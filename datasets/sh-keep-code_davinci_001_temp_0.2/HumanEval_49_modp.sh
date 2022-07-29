#!/bin/bash
# Return 2^n modulo p (be aware of numerics).
# >>> modp(3, 5)
# 3
# >>> modp(1101, 101)
# 2
# >>> modp(0, 101)
# 1
# >>> modp(3, 11)
# 8
# >>> modp(100, 101)
# 1
modp() {
echo 0

}

candidate() {
    modp "$@"
}

run_test() {
    [[ $(candidate 3 5) = 3 ]]
    [[ $(candidate 1101 101) = 2 ]]
    [[ $(candidate 0 101) = 1 ]]
    [[ $(candidate 3 11) = 8 ]]
    [[ $(candidate 100 101) = 1 ]]
    [[ $(candidate 30 5) = 4 ]]
    [[ $(candidate 31 5) = 3 ]]
}

run_test