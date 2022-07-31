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
    // >>> parse_music('o o| .| o| o| .| .| .| .| o o')
    // [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
    public static List<int> ParseMusic(string music_string) {
        // Write your code here
        List<int> result = new List<int>();
        int count = 0;
        for (int i = 0; i < music_string.Length; i++)
        {
            if (music_string[i] == 'o')
            {
                count += 4;
            }
            else if (music_string[i] == 'o|')
            {
                count += 2;
            }
            else if (music_string[i] == '.')
            {
                count += 1;
            }
            else if (music_string[i] == '|')
            {
                result.Add(count);
                count = 0;
            }
        }
        result.Add(count);
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(ParseMusic(("")).Equals((new List<int>())));
    Debug.Assert(ParseMusic(("o o o o")).Equals((new List<int>(new int[]{(int)4, (int)4, (int)4, (int)4}))));
    Debug.Assert(ParseMusic((".| .| .| .|")).Equals((new List<int>(new int[]{(int)1, (int)1, (int)1, (int)1}))));
    Debug.Assert(ParseMusic(("o| o| .| .| o o o o")).Equals((new List<int>(new int[]{(int)2, (int)2, (int)1, (int)1, (int)4, (int)4, (int)4, (int)4}))));
    Debug.Assert(ParseMusic(("o| .| o| .| o o| o o|")).Equals((new List<int>(new int[]{(int)2, (int)1, (int)2, (int)1, (int)4, (int)2, (int)4, (int)2}))));
    }

}
