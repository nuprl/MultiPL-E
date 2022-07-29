//Input to this function is a string representing musical notes in a special ASCII format.
// Your task is to parse this string and return list of integers corresponding to how many beats does each
// not last.
// Here is a legend:
// 'o' - whole note, lasts four beats
// 'o|' - half note, lasts two beats
// '.|' - quater note, lasts one beat
// >>> parse_music('o o| .| o| o| .| .| .| .| o o')
// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
function parse_music(music_string){
    var music_list = music_string.split(" ");
    var result = [];
    for(var i = 0; i < music_list.length; i++){
        if(music_list[i] == "o"){
            result.push(4);
        }
        else if(music_list[i] == "o|"){
            result.push(2);
        }
        else if(music_list[i] == ".|"){
            result.push(1);
        }
    }
    return result;
}


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