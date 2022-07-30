//For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
// >>> flip_case('Hello')
// 'hELLO'
function flip_case(string){
    var newString = '';
    for(var i = 0; i < string.length; i++){
        if(string[i] === string[i].toUpperCase()){
            newString += string[i].toLowerCase();
        } else {
            newString += string[i].toUpperCase();
        }
    }
    return newString;
}


const assert = require('node:assert');


function test() {
  let candidate = flip_case;
  assert.deepEqual(candidate(""),"");
  assert.deepEqual(candidate("Hello!"),"hELLO!");
  assert.deepEqual(candidate("These violent delights have violent ends"),"tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS");
}

test();