// TypeScript
// Return a string containing space-delimited numbers
// starting from 0 upto n inclusive.
function string_sequence(n: number): string {
  return Array.from(Array(n + 1).keys()).join(' ');
}