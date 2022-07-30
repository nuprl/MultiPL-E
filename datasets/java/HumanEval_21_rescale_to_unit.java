import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Given list of numbers (of at least two elements), apply a linear transform to that list,
    // such that the smallest number will become 0 and the largest will become 1
    // >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
    // [0.0, 0.25, 0.5, 0.75, 1.0]
    public static ArrayList<Float> rescale_to_unit(ArrayList<Float> numbers) {
        ArrayList<Float> result = new ArrayList<Float>();
        float min = numbers.get(0);
        float max = numbers.get(0);
        for (Float n : numbers) {
            if (n < min) {
                min = n;
            }
            if (n > max) {
                max = n;
            }
        }
        for (Float n : numbers) {
            result.add((n - min) / (max - min));
        }
        return result;
    }
    // Given two lists of numbers, return a list of pairs of numbers,
    // such that the pairs are the same as the pairs in the second list,
    // but shifted one position to the right with respect to the first list.
    // >>> shift_pairs([1.0, 2.0, 3.0, 4.0, 5.0], [0.0, 0.25, 0.5, 0.75, 1.0])
    // [(1.0, 0.0), (2.0, 0.25), (3.0, 0.5), (4.0, 0.75), (5.0, 1.0)]
    public static ArrayList<Tuple2<Float, Float>> shift_pairs(ArrayList<Float> list1, ArrayList<Float> list2) {
        ArrayList<Tuple2<Float, Float>> result = new ArrayList<Tuple2<Float, Float>>();
        for (int i = 0; i < list1.size(); i++) {
            result.add(new Tuple2<Float, Float>(list1.get(i), list2.get(i)));
        }
        return result;
    }
    // Given a list of numbers, return a list of the same length where each element is the average of the elements at the corresponding position of the input list.
    // >>> average_values([1.0, 2.0, 3.0, 4.0, 5.0])
    // [1.0, 1.5, 2.0, 2.5, 3.0]
    public static ArrayList<Float> average_values(ArrayList

    }
    public static void main(String[] args) {
    rescale_to_unit((new ArrayList<Float>(Arrays.asList((float)2.0f, (float)49.9f)))).equals((new ArrayList<Float>(Arrays.asList((float)0.0f, (float)1.0f))));
    rescale_to_unit((new ArrayList<Float>(Arrays.asList((float)100.0f, (float)49.9f)))).equals((new ArrayList<Float>(Arrays.asList((float)1.0f, (float)0.0f))));
    rescale_to_unit((new ArrayList<Float>(Arrays.asList((float)1.0f, (float)2.0f, (float)3.0f, (float)4.0f, (float)5.0f)))).equals((new ArrayList<Float>(Arrays.asList((float)0.0f, (float)0.25f, (float)0.5f, (float)0.75f, (float)1.0f))));
    rescale_to_unit((new ArrayList<Float>(Arrays.asList((float)2.0f, (float)1.0f, (float)5.0f, (float)3.0f, (float)4.0f)))).equals((new ArrayList<Float>(Arrays.asList((float)0.25f, (float)0.0f, (float)1.0f, (float)0.5f, (float)0.75f))));
    rescale_to_unit((new ArrayList<Float>(Arrays.asList((float)12.0f, (float)11.0f, (float)15.0f, (float)13.0f, (float)14.0f)))).equals((new ArrayList<Float>(Arrays.asList((float)0.25f, (float)0.0f, (float)1.0f, (float)0.5f, (float)0.75f))));
    }

}
