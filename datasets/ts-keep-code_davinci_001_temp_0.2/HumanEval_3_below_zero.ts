//You're given a list of deposit and withdrawal operations on a bank account that starts with
// zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
// at that point function should return True. Otherwise it should return False.
// >>> below_zero([1, 2, 3])
// False
// >>> below_zero([1, 2, -4, 5])
// True
function below_zero(operations: number[]): boolean {
  let balance = 0;
  for (let i = 0; i < operations.length; i++) {
    if (operations[i] > 0) {
      balance += operations[i];
    } else {
      balance -= operations[i];
    }
    if (balance < 0) {
      return true;
    }
  }
  return false;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = below_zero;
  assert.deepEqual(candidate([]),false);
  assert.deepEqual(candidate([1, 2, -3, 1, 2, -3]),false);
  assert.deepEqual(candidate([1, 2, -4, 5, 6]),true);
  assert.deepEqual(candidate([1, -1, 2, -2, 5, -5, 4, -4]),false);
  assert.deepEqual(candidate([1, -1, 2, -2, 5, -5, 4, -5]),true);
  assert.deepEqual(candidate([1, -2, 2, -2, 5, -5, 4, -4]),true);
}

test();