#!/bin/bash
# Return list of all prefixes from shortest to longest of the input string
# >>> all_prefixes('abc')
# ['a', 'ab', 'abc']
all_prefixes() {
echo 0

}

candidate() {
    all_prefixes "$@"
}

run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate asdfgh) = "a as asd asdf asdfg asdfgh" ]]
    [[ $(candidate WWW) = "W WW WWW" ]]
}

run_test