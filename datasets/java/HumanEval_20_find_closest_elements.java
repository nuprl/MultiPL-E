import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // From a supplied list of numbers (of length at least two) select and return two that are the closest to each
    // other and return them in order (smaller number, larger number).
    // >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
    // (2.0, 2.2)
    // >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
    // (2.0, 2.0)
    public static Pair<Float, Float> find_closest_elements(ArrayList<Float> numbers) {
        if (numbers.size() < 2) {
            return null;
        }
        Collections.sort(numbers);
        float minDiff = Float.MAX_VALUE;
        int minDiffIndex = 0;
        for (int i = 0; i < numbers.size() - 1; i++) {
            float diff = Math.abs(numbers.get(i) - numbers.get(i + 1));
            if (diff < minDiff) {
                minDiff = diff;
                minDiffIndex = i;
            }
        }
        return Tuples.pair(numbers.get(minDiffIndex), numbers.get(minDiffIndex + 1));
    }
    // From a supplied list of numbers (of length at least two) select and return two that are the farthest from each
    // other and return them in order (smaller number, larger number).
    // >>> find_farthest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
    // (1.0, 2.2)
    // >>> find_farthest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
    // (1.0, 2.0)
    public static Pair<Float, Float> find_farthest_elements(ArrayList<Float> numbers) {
        if (numbers.size() < 2) {
            return null;
        }
        Collections.sort(numbers);
        float maxDiff = Float.MIN_VALUE;
        int maxDiffIndex = 0;
        for (int i = 0; i < numbers.size() - 1; i++) {
            float diff = Math.abs(numbers.get(i) - numbers.get(i + 1));
            if (diff > maxDiff) {
                maxDiff = diff;
                maxDiffIndex = i;
            }
        }
        return Tuples.pair(numbers.get(maxDiffIndex), numbers.get(maxDiffIndex + 1));
    }
    // From a supplied list of numbers (of length at least two

    }
    public static void main(String[] args) {
    find_closest_elements((new ArrayList<Float>(Arrays.asList((float)1.0f, (float)2.0f, (float)3.9f, (float)4.0f, (float)5.0f, (float)2.2f)))).equals((Pair.with(3.9f, 4.0f)));
    find_closest_elements((new ArrayList<Float>(Arrays.asList((float)1.0f, (float)2.0f, (float)5.9f, (float)4.0f, (float)5.0f)))).equals((Pair.with(5.0f, 5.9f)));
    find_closest_elements((new ArrayList<Float>(Arrays.asList((float)1.0f, (float)2.0f, (float)3.0f, (float)4.0f, (float)5.0f, (float)2.2f)))).equals((Pair.with(2.0f, 2.2f)));
    find_closest_elements((new ArrayList<Float>(Arrays.asList((float)1.0f, (float)2.0f, (float)3.0f, (float)4.0f, (float)5.0f, (float)2.0f)))).equals((Pair.with(2.0f, 2.0f)));
    find_closest_elements((new ArrayList<Float>(Arrays.asList((float)1.1f, (float)2.2f, (float)3.1f, (float)4.1f, (float)5.1f)))).equals((Pair.with(2.2f, 3.1f)));
    }

}
