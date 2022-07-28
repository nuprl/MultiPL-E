#!/bin/bash
# Implement the function f that takes n as a parameter,
# and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
# or the sum of numbers from 1 to i otherwise.
# i starts from 1.
# the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
# Example:
# f(5) == [1, 2, 6, 24, 15]
f() {
    local n=$1
    local res=()
    for ((i=1; i<=n; i++)); do
        if [[ $((i%2)) -eq 0 ]]; then
            res+=($((1*2*3*4*5*6*7*8*9*10*11*12*13*14*15*16*17*18*19*20*21*22*23*24*25*26*27*28*29*30*31*32*33*34*35*36*37*38*39*40*41*42*43*44*45*46*47*48*49*50*51*52*53*54*55*56*57*58*59*60*61*62*63*64*65*66*67*68*69*70*71*72*73*74*75*76*77*78*79*80*81*82*83*84*85*86*87*88*89*90*91*92*93*94*95*96*97*98*99*100)))
        else
            res+=($((1+2+3+4+5+6+7+8+9+10+11+12+13+14+15+16+17+18+19+20+21+22+23+24+25+26+27+28+29+30+31+32+33+34+35+36+37+38+39+40+41+42+43+44+45+46+47+48+49+50+51+52+53+54+55+56+57+58+59+60+61+62+63+64+65+66+67+68+69+70+71+72+73+74+75+76+77+78+79+80+81+82+83+84+85+86+87+88+89+90+91+92+93+94+95+96+97+98+99+100)))
        fi
    done
    echo ${res[@]}

}

candidate() {
    local res=$(f "$@")
    echo $res
}

test() {
    declare -a x1=(1 2 6 24 15)
        x0=$(candidate 5)
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=(1 2 6 24 15 720 28)
        x2=$(candidate 7)
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=(1)
        x4=$(candidate 1)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=(1 2 6)
        x6=$(candidate 3)
    assert_equals "${x7[*]}" "${x6[*]}"

}