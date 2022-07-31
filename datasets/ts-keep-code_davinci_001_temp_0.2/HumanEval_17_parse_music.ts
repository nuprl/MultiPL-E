//Input to this function is a string representing musical notes in a special ASCII format.
// Your task is to parse this string and return list of integers corresponding to how many beats does each
// not last.
// Here is a legend:
// 'o' - whole note, lasts four beats
// 'o|' - half note, lasts two beats
// '.|' - quater note, lasts one beat
// >>> parse_music('o o| .| o| o| .| .| .| .| o o')
// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
function parse_music(music_string: string): number[] {
    let music_list: number[] = [];
    let music_string_length: number = music_string.length;
    let i: number = 0;
    while (i < music_string_length) {
        if (music_string[i] === 'o') {
            music_list.push(4);
            i++;
        } else if (music_string[i] === 'o' && music_string[i + 1] === '|') {
            music_list.push(2);
            i += 2;
        } else if (music_string[i] === '.' && music_string[i + 1] === '|') {
            music_list.push(1);
            i += 2;
        }
    }
    return music_list;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = parse_music;
  assert.deepEqual(candidate(""),[]);
  assert.deepEqual(candidate("o o o o"),[4, 4, 4, 4]);
  assert.deepEqual(candidate(".| .| .| .|"),[1, 1, 1, 1]);
  assert.deepEqual(candidate("o| o| .| .| o o o o"),[2, 2, 1, 1, 4, 4, 4, 4]);
  assert.deepEqual(candidate("o| .| o| .| o o| o o|"),[2, 1, 2, 1, 4, 2, 4, 2]);
}

test();