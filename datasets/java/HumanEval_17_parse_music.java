import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Input to this function is a string representing musical notes in a special ASCII format.
    // Your task is to parse this string and return list of integers corresponding to how many beats does each
    // not last.
    // Here is a legend:
    // 'o' - whole note, lasts four beats
    // 'o|' - half note, lasts two beats
    // '.|' - quater note, lasts one beat
    // >>> parse_music('o o| .| o| o| .| .| .| .| o o')
    // [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
    public static ArrayList<Long> parse_music(String music_string) {
        ArrayList<Long> result = new ArrayList<>();
        String[] notes = music_string.split(" ");
        for (String note : notes) {
            switch (note) {
                case "o":
                    result.add(4L);
                    break;
                case "o|":
                    result.add(2L);
                    break;
                case ".|":
                    result.add(1L);
                    break;
            }
        }
        return result;
    }
    // Input to this function is a string representing musical notes in a special ASCII format.
    // Your task is to parse this string and return list of integers corresponding to how many beats does each
    // not last.
    // Here is a legend:
    // 'o' - whole note, lasts four beats
    // 'o|' - half note, lasts two beats
    // '.|' - quater note, lasts one beat
    // >>> parse_music('o o| .| o| o| .| .| .| .| o o')
    // [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
    public static ArrayList<Long> parse_music(String music_string) {
        ArrayList<Long> result = new ArrayList<>();
        String[] notes = music_string.split(" ");
        for (String note : notes) {
            switch (note) {
                case "o":
                    result.add(4L);
                    break;
                case "o|":
                    result.add(2L);
                    break;
                case ".|":
                    result.add(1L);
                    break;
            }
        }
        return result;
    }
    // Input to this function is a string representing musical notes in a special ASCII format.
    // Your task is to parse this string and return list of integers corresponding to how many beats does each
    // not last.
    // Here is a legend:
    // 'o' - whole note, lasts four beats
    // 'o|' - half note, lasts two beats
    // '.|' - quater note, lasts one

    }
    public static void main(String[] args) {
    parse_music(("")).equals((new ArrayList<Long>(Arrays.asList())));
    parse_music(("o o o o")).equals((new ArrayList<Long>(Arrays.asList((long)4l, (long)4l, (long)4l, (long)4l))));
    parse_music((".| .| .| .|")).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)1l, (long)1l, (long)1l))));
    parse_music(("o| o| .| .| o o o o")).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)2l, (long)1l, (long)1l, (long)4l, (long)4l, (long)4l, (long)4l))));
    parse_music(("o| .| o| .| o o| o o|")).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)1l, (long)2l, (long)1l, (long)4l, (long)2l, (long)4l, (long)2l))));
    }

}
