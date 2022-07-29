#include<assert.h>
#include<bits/stdc++.h>
// Input to this function is a string representing musical notes in a special ASCII format.
// Your task is to parse this string and return list of integers corresponding to how many beats does each
// not last.
// Here is a legend:
// 'o' - whole note, lasts four beats
// 'o|' - half note, lasts two beats
// '.|' - quater note, lasts one beat
// >>> parse_music('o o| .| o| o| .| .| .| .| o o')
// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
std::vector<long> parse_music(std::string music_string) {
    std::vector<long> result;
    std::stringstream ss(music_string);
    std::string note;
    while (ss >> note) {
        if (note == "o") {
            result.push_back(4);
        } else if (note == "o|") {
            result.push_back(2);
        } else if (note == ".|") {
            result.push_back(1);
        }
    }
    return result;

}
int main() {
    auto candidate = parse_music;
    assert(candidate(("")) == (std::vector<long>()));
    assert(candidate(("o o o o")) == (std::vector<long>({4, 4, 4, 4})));
    assert(candidate((".| .| .| .|")) == (std::vector<long>({1, 1, 1, 1})));
    assert(candidate(("o| o| .| .| o o o o")) == (std::vector<long>({2, 2, 1, 1, 4, 4, 4, 4})));
    assert(candidate(("o| .| o| .| o o| o o|")) == (std::vector<long>({2, 1, 2, 1, 4, 2, 4, 2})));
}
