//You are given a positive integer n. You have to create an integer array a of length n.
// For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
// Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
// and a[i] + a[j] + a[k] is a multiple of 3.
// Example :
// Input: n = 5
// Output: 1
// Explanation: 
// a = [1, 3, 7, 13, 21]
// The only valid triple is (1, 7, 13).
function get_max_triples(n){
    let arr = [];
    for(let i = 1; i <= n; i++){
        arr.push(i * i - i + 1);
    }
    let count = 0;
    for(let i = 0; i < arr.length; i++){
        for(let j = i + 1; j < arr.length; j++){
            for(let k = j + 1; k < arr.length; k++){
                if((arr[i] + arr[j] + arr[k]) % 3 === 0){
                    count++;
                }
            }
        }
    }
    return count;
}


const assert = require('node:assert');


function test() {
  let candidate = get_max_triples;
  assert.deepEqual(candidate(5),1);
  assert.deepEqual(candidate(6),4);
  assert.deepEqual(candidate(10),36);
  assert.deepEqual(candidate(100),53361);
}

test();