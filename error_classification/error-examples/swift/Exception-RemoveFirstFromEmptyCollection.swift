// ----------- problem HumanEval_17_parse_music, completion 172 ------------
// status = Exception
// exit_code = -4
/* stderr = 
Swift/RangeReplaceableCollection.swift:623: Fatal error: Can't remove first element from an empty collection
Current stack trace:
0    libswiftCore.so                    0x00002b1fcfdb2c80 _swift_stdlib_reportFatalErrorInFile + 112
1    libswiftCore.so                    0x00002b1fcfaa9561 <unavailable> + 1434977
2    libswiftCore.so                    0x00002b1fcfaa9286 <unavailable> + 1434246
3    libswiftCore.so                    0x00002b1fcfaa913c <unavailable> + 1433916
4    libswiftCore.so                    0x00002b1fcfaa8bb0 _assertionFailure(_:_:file:line:flags:) + 251
5    libswiftCore.so                    0x00002b1fcfa98ff0 RangeReplaceableCollection.removeFirst() + 272
6    tmp3osops7w                        0x0000561677a7b750 <unavailable> + 10064
7    tmp3osops7w                        0x0000561677a7ab07 <unavailable> + 6919
8    libc.so.6                          0x00002b1fcff9e460 __libc_start_main + 245
9    tmp3osops7w                        0x0000561677a7a729 <unavailable> + 5929

*/
/* stdout = 

*/


/// Input to this function is a string representing musical notes in a special ASCII format.
/// Your task is to parse this string and return array of integers corresponding to how many beats does each
/// not last.
/// Here is a legend:
/// 'o' - whole note, lasts four beats
/// 'o|' - half note, lasts two beats
/// '.|' - quater note, lasts one beat
/// >>> parse_music(music_string: "o o| .| o| o| .| .| .| .| o o")
/// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
func parse_music(music_string: String) -> [Int] {
    var result: [Int] = []
    var music_string = music_string
    while music_string.count > 0 {
        let index = music_string.index(of: " ") ?? music_string.endIndex
        let substring = music_string[..<index]
        switch substring {
        case "o":
            result.append(4)
        case "o|":
            result.append(2)
        case ".|":
            result.append(1)
        default:
            break
        }
        music_string = String(music_string[index...])
        music_string.removeFirst()
    }
    return result
}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(parse_music(music_string: "") == [] as [Int])
assert(parse_music(music_string: "o o o o") == [4, 4, 4, 4])
assert(parse_music(music_string: ".| .| .| .|") == [1, 1, 1, 1])
assert(parse_music(music_string: "o| o| .| .| o o o o") == [2, 2, 1, 1, 4, 4, 4, 4])
assert(parse_music(music_string: "o| .| o| .| o o| o o|") == [2, 1, 2, 1, 4, 2, 4, 2])



