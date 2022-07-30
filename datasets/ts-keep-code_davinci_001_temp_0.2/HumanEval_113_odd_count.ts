//Given a list of strings, where each string consists of only digits, return a list.
// Each element i of the output should be "the number of odd elements in the
// string i of the input." where all the i's should be replaced by the number
// of odd digits in the i'th string of the input.
// >>> odd_count(['1234567'])
// ["the number of odd elements 4n the str4ng 4 of the 4nput."]
// >>> odd_count(['3',"11111111"])
// ["the number of odd elements 1n the str1ng 1 of the 1nput.",
// "the number of odd elements 8n the str8ng 8 of the 8nput."]
function odd_count(lst: string[]): string[] {
    let result: string[] = [];
    for (let i = 0; i < lst.length; i++) {
        let count = 0;
        for (let j = 0; j < lst[i].length; j++) {
            if (parseInt(lst[i][j]) % 2 !== 0) {
                count++;
            }
        }
        result.push("the number of odd elements " + count + "n the str" + count + "g " + count + " of the " + count + "nput.");
    }
    return result;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = odd_count;
  assert.deepEqual(candidate(["1234567"]),["the number of odd elements 4n the str4ng 4 of the 4nput."]);
  assert.deepEqual(candidate(["3", "11111111"]),["the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."]);
  assert.deepEqual(candidate(["271", "137", "314"]),["the number of odd elements 2n the str2ng 2 of the 2nput.", "the number of odd elements 3n the str3ng 3 of the 3nput.", "the number of odd elements 2n the str2ng 2 of the 2nput."]);
}

test();