//Write a function that accepts two lists of strings and returns the list that has 
// total number of chars in the all strings of the list less than the other list.
// if the two lists have the same number of chars, return the first list.
// Examples
// total_match([], []) ➞ []
// total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
// total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
// total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
// total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
function total_match(lst1, lst2){
    let lst1_len = lst1.join('').length;
    let lst2_len = lst2.join('').length;
    if(lst1_len < lst2_len){
        return lst1;
    }else if(lst1_len > lst2_len){
        return lst2;
    }else{
        return lst1;
    }
}


const assert = require('node:assert');


function test() {
  let candidate = total_match;
  assert.deepEqual(candidate([], []),[]);
  assert.deepEqual(candidate(["hi", "admin"], ["hi", "hi"]),["hi", "hi"]);
  assert.deepEqual(candidate(["hi", "admin"], ["hi", "hi", "admin", "project"]),["hi", "admin"]);
  assert.deepEqual(candidate(["4"], ["1", "2", "3", "4", "5"]),["4"]);
  assert.deepEqual(candidate(["hi", "admin"], ["hI", "Hi"]),["hI", "Hi"]);
  assert.deepEqual(candidate(["hi", "admin"], ["hI", "hi", "hi"]),["hI", "hi", "hi"]);
  assert.deepEqual(candidate(["hi", "admin"], ["hI", "hi", "hii"]),["hi", "admin"]);
  assert.deepEqual(candidate([], ["this"]),[]);
  assert.deepEqual(candidate(["this"], []),[]);
}

test();