<?php
// You have been tasked to write a function that receives 
// a hexadecimal number as a string and counts the number of hexadecimal 
// digits that are primes (prime number, or a prime, is a natural number 
// greater than 1 that is not a product of two smaller natural numbers).
// Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
// Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
// So you have to determine a number of the following digits: 2, 3, 5, 7, 
// B (=decimal 11), D (=decimal 13).
// Note: you may assume the input is always correct or empty string, 
// and symbols A,B,C,D,E,F are always uppercase.
// Examples:
// For num = "AB" the output should be 1.
// For num = "1077E" the output should be 2.
// For num = "ABED1A33" the output should be 4.
// For num = "123456789ABCDEF0" the output should be 6.
// For num = "2020" the output should be 2.
function hex_key($num) {
    $hex = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'];
    $prime = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997];
    $count = 0;
    for ($i = 0; $i < strlen($num); $i

function candidate(...$args) {
    return hex_key(...$args);
}

function test(): void {
    if (candidate("AB") !== 1) { throw new Exception("Test failed!"); }
    if (candidate("1077E") !== 2) { throw new Exception("Test failed!"); }
    if (candidate("ABED1A33") !== 4) { throw new Exception("Test failed!"); }
    if (candidate("2020") !== 2) { throw new Exception("Test failed!"); }
    if (candidate("123456789ABCDEF0") !== 6) { throw new Exception("Test failed!"); }
    if (candidate("112233445566778899AABBCCDDEEFF00") !== 12) { throw new Exception("Test failed!"); }
}

test();