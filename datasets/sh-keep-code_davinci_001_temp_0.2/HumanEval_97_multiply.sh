#!/bin/bash
# Complete the function that takes two integers and returns 
# the product of their unit digits.
# Assume the input is always valid.
# Examples:
# multiply(148, 412) should return 16.
# multiply(19, 28) should return 72.
# multiply(2020, 1851) should return 0.
# multiply(14,-15) should return 20.
#
# $1 is an integer
# $2 is an integer
multiply() {
    local product=0
    local remainder=0
    local digit=0
    local sign=1
    local sign2=1
    local sign3=1
    local sign4=1
    local sign5=1
    local sign6=1
    local sign7=1
    local sign8=1
    local sign9=1
    local sign10=1
    local sign11=1
    local sign12=1
    local sign13=1
    local sign14=1
    local sign15=1
    local sign16=1
    local sign17=1
    local sign18=1
    local sign19=1
    local sign20=1
    local sign21=1
    local sign22=1
    local sign23=1
    local sign24=1
    local sign25=1
    local sign26=1
    local sign27=1
    local sign28=1
    local sign29=1
    local sign30=1
    local sign31=1
    local sign32=1
    local sign33=1
    local sign34=1
    local sign35=1
    local sign36=1
    local sign37=1
    local sign38=1
    local sign39=1
    local sign40=1
    local sign41=1
    local sign42=1
    local sign43=1
    local sign44=1
    local sign45=1
    local sign46=1
    local sign47=1
    local sign48=1
    local sign49=1
    local sign50=1
    local sign51=1
    local sign52=1
    local sign53=1
    local sign54=1
    local sign55=1
    local sign56=1
    local sign57=1
    local sign58=1
    local sign59=1
    local sign60=1
    local sign61=1
    local sign62=1
    local sign63=1
    local sign64=1
    local sign65=1
    local sign66=1
    local sign67=1
    local sign68=1
    local sign69=1

}

candidate() {
    multiply "$@"
}

run_test() {
    [[ $(candidate 148 412) = 16 ]]
    [[ $(candidate 19 28) = 72 ]]
    [[ $(candidate 2020 1851) = 0 ]]
    [[ $(candidate 14 -15) = 20 ]]
    [[ $(candidate 76 67) = 42 ]]
    [[ $(candidate 17 27) = 49 ]]
    [[ $(candidate 0 1) = 0 ]]
    [[ $(candidate 0 0) = 0 ]]
}

run_test