package parse_music_test

import (
    "testing"
    "fmt"
)

// Input to this function is a string representing musical notes in a special ASCII format.
// Your task is to parse this string and return list of integers corresponding to how many beats does each
// not last.
// Here is a legend:
// 'o' - whole note, lasts four beats
// 'o|' - half note, lasts two beats
// '.|' - quater note, lasts one beat
// >>> parse_music('o o| .| o| o| .| .| .| .| o o')
// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
func parse_music(music_string string) []int {
    var beats []int
    var beat int
    for _, char := range music_string {
        switch char {
        case 'o':
            beat = 4
        case 'o|':
            beat = 2
        case '.|':
            beat = 1
        }
        beats = append(beats, beat)
    }
    return beats
}


func TestParse_Music(t *testing.T) {
  candidate := parse_music
	type test struct {
		actual   interface{}
		expected interface{}
	}
   tests := []test{
     { actual: candidate(""), expected: []int{} },
     { actual: candidate("o o o o"), expected: []int{4, 4, 4, 4} },
     { actual: candidate(".| .| .| .|"), expected: []int{1, 1, 1, 1} },
     { actual: candidate("o| o| .| .| o o o o"), expected: []int{2, 2, 1, 1, 4, 4, 4, 4} },
     { actual: candidate("o| .| o| .| o o| o o|"), expected: []int{2, 1, 2, 1, 4, 2, 4, 2} },
   }

	for i, tc := range tests {
		t.Run(fmt.Sprintf("test num % d", i), func(t *testing.T) {
			if fmt.Sprintf("%v", tc.actual) != fmt.Sprintf("%v", tc.expected) {
				t.Errorf("expected '%s', got '%s'", tc.expected, tc.actual)
			}
		})
	}
}
