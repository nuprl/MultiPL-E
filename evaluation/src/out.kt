// Add two numbers x and y
// >>> add(2, 3)
// 5
// >>> add(5, 7)
// 12

fun add(x: Int, y: Int): Int {
    return x + y
}

fun main() {
  assert(1 == add(0, 1));
  assert(1 == add(1, 0));
  assert(5 == add(2, 3));
  assert(12 == add(5, 7));
  assert(12 == add(7, 5));
}