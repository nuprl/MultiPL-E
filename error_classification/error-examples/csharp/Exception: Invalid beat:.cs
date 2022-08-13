# ---- HumanEval_17_parse_music --- completion 8 ---- 
using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Input to this function is a string representing musical notes in a special ASCII format.
    // Your task is to parse this string and return list of integers corresponding to how many beats does each
    // not last.
    // Here is a legend:
    // 'o' - whole note, lasts four beats
    // 'o|' - half note, lasts two beats
    // '.|' - quater note, lasts one beat
    // >>> ParseMusic(("o o| .| o| o| .| .| .| .| o o"))
    // (new List<long>(new long[]{(long)4L, (long)2L, (long)1L, (long)2L, (long)2L, (long)1L, (long)1L, (long)1L, (long)1L, (long)4L, (long)4L}))
    public static List<long> ParseMusic(string music_string) {
        var result = new List<long>();
        var beats = new List<string>();
        var beat = new StringBuilder();
        foreach (var ch in music_string) {
            if (ch == ' ') {
                beats.Add(beat.ToString());
                beat.Clear();
            } else {
                beat.Append(ch);
            }
        }
        beats.Add(beat.ToString());
        foreach (var b in beats) {
            switch (b) {
                case "o":
                    result.Add(4);
                    break;
                case "o|":
                    result.Add(2);
                    break;
                case ".|":
                    result.Add(1);
                    break;
                default:
                    throw new Exception("Invalid beat: " + b);
            }
        }
        return result;
    }
    public static void Main(string[] args) {
    Debug.Assert(ParseMusic(("")).Equals((new List<long>())));
    Debug.Assert(ParseMusic(("o o o o")).Equals((new List<long>(new long[]{(long)4L, (long)4L, (long)4L, (long)4L}))));
    Debug.Assert(ParseMusic((".| .| .| .|")).Equals((new List<long>(new long[]{(long)1L, (long)1L, (long)1L, (long)1L}))));
    Debug.Assert(ParseMusic(("o| o| .| .| o o o o")).Equals((new List<long>(new long[]{(long)2L, (long)2L, (long)1L, (long)1L, (long)4L, (long)4L, (long)4L, (long)4L}))));
    Debug.Assert(ParseMusic(("o| .| o| .| o o| o o|")).Equals((new List<long>(new long[]{(long)2L, (long)1L, (long)2L, (long)1L, (long)4L, (long)2L, (long)4L, (long)2L}))));
    }

}

# status = Exception
# exit_code = 1
''' stderr = 

Unhandled Exception:
System.Exception: Invalid beat: 
  at Problem.ParseMusic (System.String music_string) [0x000ed] in <bd28b959895d42cfabf8f54a9924b731>:0 
  at Problem.Main (System.String[] args) [0x00001] in <bd28b959895d42cfabf8f54a9924b731>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.Exception: Invalid beat: 
  at Problem.ParseMusic (System.String music_string) [0x000ed] in <bd28b959895d42cfabf8f54a9924b731>:0 
  at Problem.Main (System.String[] args) [0x00001] in <bd28b959895d42cfabf8f54a9924b731>:0 

'''
''' stdout = 

'''





