//Given a string text, replace all spaces in it with underscores, 
// and if a string has more than 2 consecutive spaces, 
// then replace all consecutive spaces with - 
// fix_spaces("Example") == "Example"
// fix_spaces("Example 1") == "Example_1"
// fix_spaces(" Example 2") == "_Example_2"
// fix_spaces(" Example   3") == "_Example-3"
function fix_spaces(text){
    return text.replace(/\s+/g, '_').replace(/\s+/g, '-');
}


const assert = require('node:assert');


function test() {
  let candidate = fix_spaces;
  assert.deepEqual(candidate("Example"),"Example");
  assert.deepEqual(candidate("Mudasir Hanif "),"Mudasir_Hanif_");
  assert.deepEqual(candidate("Yellow Yellow  Dirty  Fellow"),"Yellow_Yellow__Dirty__Fellow");
  assert.deepEqual(candidate("Exa   mple"),"Exa-mple");
  assert.deepEqual(candidate("   Exa 1 2 2 mple"),"-Exa_1_2_2_mple");
}

test();