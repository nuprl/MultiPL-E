#!/bin/bash
# Given a string representing a space separated lowercase letters, return a dictionary
# of the letter with the most repetition and containing the corresponding count.
# If several letters have the same occurrence, return all of them.
# Example:
# histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
# histogram('a b b a') == {'a': 2, 'b': 2}
# histogram('a b c a b') == {'a': 2, 'b': 2}
# histogram('b b b b a') == {'b': 4}
# histogram('') == {}
histogram() {
  local -A hist
  local -i max=0
  local -a max_keys=()
  for word in $@; do
    hist[$word]=$((++hist[$word]))
    if [[ ${hist[$word]} -gt $max ]]; then
      max=${hist[$word]}
      max_keys=($word)
    elif [[ ${hist[$word]} -eq $max ]]; then
      max_keys+=($word)
    fi
  done
  echo "${max_keys[@]}"

}

candidate() {
    local res=$(histogram "$@")
    echo $res
}

test() {
    declare -A x1=(["a"]=2 ["b"]=2)
        x0=$(candidate "a b b a")
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -A x3=(["a"]=2 ["b"]=2)
        x2=$(candidate "a b c a b")
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -A x5=(["a"]=1 ["b"]=1 ["c"]=1 ["d"]=1 ["g"]=1)
        x4=$(candidate "a b c d g")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -A x7=(["r"]=1 ["t"]=1 ["g"]=1)
        x6=$(candidate "r t g")
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -A x9=(["b"]=4)
        x8=$(candidate "b b b b a")
    assert_equals "${x9[*]}" "${x8[*]}"

    declare -A x11=(["r"]=1 ["t"]=1 ["g"]=1)
        x10=$(candidate "r t g")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -A x13=()
        x12=$(candidate "")
    assert_equals "${x13[*]}" "${x12[*]}"

    declare -A x15=(["a"]=1)
        x14=$(candidate "a")
    assert_equals "${x15[*]}" "${x14[*]}"

}