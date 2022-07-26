<?php
// Input to this function is a string representing musical notes in a special ASCII format.
// Your task is to parse this string and return list of integers corresponding to how many beats does each
// not last.
// Here is a legend:
// 'o' - whole note, lasts four beats
// 'o|' - half note, lasts two beats
// '.|' - quater note, lasts one beat
// >>> parse_music('o o| .| o| o| .| .| .| .| o o')
// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
function parse_music($music_string) {
    $music_string = str_replace(' ', '', $music_string);
    $music_string = str_replace('o|', 'o', $music_string);
    $music_string = str_replace('.|', 'o', $music_string);
    $music_string = str_replace('|', '', $music_string);
    $music_string = str_replace('o', '4', $music_string);
    $music_string = str_replace('.', '2', $music_string);
    $music_string = str_replace('-', '1', $music_string);
    $music_string = str_replace(' ', '', $music_string);
    $music_string = str_replace('|', '', $music_string);
    $music_string = str_replace('-', '', $music_string);
    $music_string = str_replace('o', '', $music_string);
    $music_string = str_replace('.', '', $music_string);
    $music_string = str_replace(' ', '', $music_string);
    $music_string = str_replace('-', '', $music_string);
    $music_string = str_replace('|', '', $music_string);
    $music_string = str_replace('o', '', $music_string);
    $music_string = str_replace('.', '', $music_string);
    $music_string = str_replace(' ', '', $music_string);
    $music_string = str_replace('-', '', $music_string);
    $music_string = str_replace('|', '', $music_string);
    $music_string = str_replace('o', '', $music_string);
    $music_string = str_replace('.', '', $music_string);
    $music_string = str_replace(' ', '', $music_string);
    $music_string = str_replace('-', '', $music_string);
    $music_string = str_replace('|', '', $music_

function candidate(...$args) {
    return parse_music(...$args);
}

function test(): void {
    if (candidate('') !== array()) { throw new Exception("Test failed!"); }
    if (candidate('o o o o') !== array(4, 4, 4, 4)) { throw new Exception("Test failed!"); }
    if (candidate('.| .| .| .|') !== array(1, 1, 1, 1)) { throw new Exception("Test failed!"); }
    if (candidate('o| o| .| .| o o o o') !== array(2, 2, 1, 1, 4, 4, 4, 4)) { throw new Exception("Test failed!"); }
    if (candidate('o| .| o| .| o o| o o|') !== array(2, 1, 2, 1, 4, 2, 4, 2)) { throw new Exception("Test failed!"); }
}

test();