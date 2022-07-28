#!/bin/bash
# There are eight planets in our solar system: the closerst to the Sun 
# is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn, 
# Uranus, Neptune.
# Write a function that takes two planet names as strings planet1 and planet2. 
# The function should return a tuple containing all planets whose orbits are 
# located between the orbit of planet1 and the orbit of planet2, sorted by 
# the proximity to the sun. 
# The function should return an empty tuple if planet1 or planet2
# are not correct planet names. 
# Examples
# bf("Jupiter", "Neptune") ==> ("Saturn", "Uranus")
# bf("Earth", "Mercury") ==> ("Venus")
# bf("Mercury", "Uranus") ==> ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
bf() {
  local planet1=$1
  local planet2=$2
  local planets=(Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune)
  local planet1_index=0
  local planet2_index=0
  local planet1_index_found=0
  local planet2_index_found=0
  local planet1_index_found_in_between=0
  local planet2_index_found_in_between=0
  local planet1_index_found_in_between_array=()
  local planet2_index_found_in_between_array=()
  local planet1_index_found_in_between_array_sorted=()
  local planet2_index_found_in_between_array_sorted=()
  local planet1_index_found_in_between_array_sorted_string=()
  local planet2_index_found_in_between_array_sorted_string=()
  local planet1_index_found_in_between_array_sorted_string_joined=()
  local planet2_index_found_in_between_array_sorted_string_joined=()
  local planet1_index_found_in_between_array_sorted_string_joined_joined=()
  local planet2_index_found_in_between_array_sorted_string_joined_joined=()
  local planet1_index_found_in_between_array_sorted_string_joined_joined_joined=()
  local planet2_index_found_in_between_array_sorted_string_joined_joined_joined=()
  local planet1_index_found_in_between_array_sorted_string_joined_joined_joined_joined=()
  local planet2_index_found_in_between_array_sorted_string_joined_joined_joined_joined=()
  local planet1_index_found_in_between_array_sorted_string_joined_joined_joined_joined_joined=()
  local planet2_index_found_in_between_array_sorted_string_joined_joined_joined_joined_joined=()
 

}

candidate() {
    local res=$(bf "$@")
    echo $res
}

test() {
    declare -a x1=('Saturn' 'Uranus')
        x0=$(candidate 'Jupiter' 'Neptune')
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=('Venus')
        x2=$(candidate 'Earth' 'Mercury')
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=('Venus' 'Earth' 'Mars' 'Jupiter' 'Saturn')
        x4=$(candidate 'Mercury' 'Uranus')
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=('Earth' 'Mars' 'Jupiter' 'Saturn' 'Uranus')
        x6=$(candidate 'Neptune' 'Venus')
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x9=()
        x8=$(candidate 'Earth' 'Earth')
    assert_equals "${x9[*]}" "${x8[*]}"

    declare -a x11=()
        x10=$(candidate 'Mars' 'Earth')
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x13=()
        x12=$(candidate 'Jupiter' 'Makemake')
    assert_equals "${x13[*]}" "${x12[*]}"

}