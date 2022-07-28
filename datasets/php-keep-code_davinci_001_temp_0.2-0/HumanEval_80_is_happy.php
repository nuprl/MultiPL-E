<?php
// You are given a string s.
// Your task is to check if the string is happy or not.
// A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
// For example:
// is_happy(a) => False
// is_happy(aa) => False
// is_happy(abcd) => True
// is_happy(aabb) => False
// is_happy(adb) => True
// is_happy(xyy) => False
function is_happy($s) {
    $s = str_split($s);
    $count = 0;
    $count2 = 0;
    $count3 = 0;
    $count4 = 0;
    $count5 = 0;
    $count6 = 0;
    $count7 = 0;
    $count8 = 0;
    $count9 = 0;
    $count10 = 0;
    $count11 = 0;
    $count12 = 0;
    $count13 = 0;
    $count14 = 0;
    $count15 = 0;
    $count16 = 0;
    $count17 = 0;
    $count18 = 0;
    $count19 = 0;
    $count20 = 0;
    $count21 = 0;
    $count22 = 0;
    $count23 = 0;
    $count24 = 0;
    $count25 = 0;
    $count26 = 0;
    $count27 = 0;
    $count28 = 0;
    $count29 = 0;
    $count30 = 0;
    $count31 = 0;
    $count32 = 0;
    $count33 = 0;
    $count34 = 0;
    $count35 = 0;
    $count36 = 0;
    $count37 = 0;
    $count38 = 0;
    $count39 = 0;
    $count40 = 0;
    $count41 = 0;
    $count42 = 0;
    $count43 = 0;
    $count44 = 0;
    $count45 = 0;
    $count46 = 0;
    $count47 = 0;
    $count48 = 0;
    $count49 = 0;
    $count50 = 0;
    $count51 = 0;
    $count52 = 0;
    $count53 = 0;
    $count54 = 0;
    $count55 = 0;
    $count56 = 0;
    $count57 = 0;
    $count58 = 0;
    $count59 = 0;
    $count60 = 0;
    $count61 = 0;
   

function candidate(...$args) {
    return is_happy(...$args);
}

function test(): void {
    if (candidate('a') !== false) { throw new Exception("Test failed!"); }
    if (candidate('aa') !== false) { throw new Exception("Test failed!"); }
    if (candidate('abcd') !== true) { throw new Exception("Test failed!"); }
    if (candidate('aabb') !== false) { throw new Exception("Test failed!"); }
    if (candidate('adb') !== true) { throw new Exception("Test failed!"); }
    if (candidate('xyy') !== false) { throw new Exception("Test failed!"); }
    if (candidate('iopaxpoi') !== true) { throw new Exception("Test failed!"); }
    if (candidate('iopaxioi') !== false) { throw new Exception("Test failed!"); }
}

test();