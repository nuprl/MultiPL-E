<?php
// Write a function that takes a message, and encodes in such a 
// way that it swaps case of all letters, replaces all vowels in 
// the message with the letter that appears 2 places ahead of that 
// vowel in the english alphabet. 
// Assume only letters. 
// Examples:
// >>> encode('test')
// 'TGST'
// >>> encode('This is a message')
// 'tHKS KS C MGSSCGG'
function encode($message) {
    $alphabet = 'abcdefghijklmnopqrstuvwxyz';
    $newMessage = '';
    $vowels = array('a', 'e', 'i', 'o', 'u');
    $newVowels = array();
    $newVowels[0] = $vowels[2];
    $newVowels[1] = $vowels[4];
    $newVowels[2] = $vowels[0];
    $newVowels[3] = $vowels[3];
    $newVowels[4] = $vowels[1];
    $newVowels[5] = $vowels[5];
    $newVowels[6] = $vowels[6];
    $newVowels[7] = $vowels[7];
    $newVowels[8] = $vowels[8];
    $newVowels[9] = $vowels[9];
    $newVowels[10] = $vowels[10];
    $newVowels[11] = $vowels[11];
    $newVowels[12] = $vowels[12];
    $newVowels[13] = $vowels[13];
    $newVowels[14] = $vowels[14];
    $newVowels[15] = $vowels[15];
    $newVowels[16] = $vowels[16];
    $newVowels[17] = $vowels[17];
    $newVowels[18] = $vowels[18];
    $newVowels[19] = $vowels[19];
    $newVowels[20] = $vowels[20];
    $newVowels[21] = $vowels[21];
    $newVowels[22] = $vowels[22];
    $newVowels[23] = $vowels[23];
    $newV

function candidate(...$args) {
    return encode(...$args);
}

function test(): void {
    if (candidate('TEST') !== 'tgst') { throw new Exception("Test failed!"); }
    if (candidate('Mudasir') !== 'mWDCSKR') { throw new Exception("Test failed!"); }
    if (candidate('YES') !== 'ygs') { throw new Exception("Test failed!"); }
    if (candidate('This is a message') !== 'tHKS KS C MGSSCGG') { throw new Exception("Test failed!"); }
    if (candidate('I DoNt KnOw WhAt tO WrItE') !== 'k dQnT kNqW wHcT Tq wRkTg') { throw new Exception("Test failed!"); }
}

test();