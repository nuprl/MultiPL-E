import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // For a given list of input numbers, calculate Mean Absolute Deviation
    // around the mean of this dataset.
    // Mean Absolute Deviation is the average absolute difference between each
    // element and a centerpoint (mean in this case):
    // MAD = average | x - x_mean |
    // >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
    // 1.0
    public static float mean_absolute_deviation(ArrayList<Float> numbers) {
        float mean = 0;
        float sum = 0;
        float mad = 0;
        float temp = 0;
        float temp2 = 0;
        float temp3 = 0;
        float temp4 = 0;
        float temp5 = 0;
        float temp6 = 0;
        float temp7 = 0;
        float temp8 = 0;
        float temp9 = 0;
        float temp10 = 0;
        float temp11 = 0;
        float temp12 = 0;
        float temp13 = 0;
        float temp14 = 0;
        float temp15 = 0;
        float temp16 = 0;
        float temp17 = 0;
        float temp18 = 0;
        float temp19 = 0;
        float temp20 = 0;
        float temp21 = 0;
        float temp22 = 0;
        float temp23 = 0;
        float temp24 = 0;
        float temp25 = 0;
        float temp26 = 0;
        float temp27 = 0;
        float temp28 = 0;
        float temp29 = 0;
        float temp30 = 0;
        float temp31 = 0;
        float temp32 = 0;
        float temp33 = 0;
        float temp34 = 0;
        float temp35 = 0;
        float temp36 = 0;
        float temp37 = 0;
        float temp38 = 0;
        float temp39 = 0;
        float temp40 = 0;
        float temp41 = 0;
        float temp42 = 0;
        float temp43 = 0;
        float temp44 = 0;
        float temp45 = 0;
        float temp46 = 0;
        float temp47 = 0;
        float temp48 = 0;
        float temp49 = 0;
        float temp50 = 0;
        float temp51 = 0;
        float temp52 = 0;
        float temp53 = 0;
        float temp54 = 0;
        float temp55 = 0;
        float temp56 = 0;
        float temp57 = 0;
        float temp58 = 0;
        float temp59 = 0;
        float temp60 = 0;

    }
    public static void main(String[] args) {
    assert(mean_absolute_deviation((new ArrayList<Float>(Arrays.asList((float)1.0f, (float)2.0f)))) == (0.5f));
    assert(mean_absolute_deviation((new ArrayList<Float>(Arrays.asList((float)1.0f, (float)2.0f, (float)3.0f, (float)4.0f)))) == (1.0f));
    assert(mean_absolute_deviation((new ArrayList<Float>(Arrays.asList((float)1.0f, (float)2.0f, (float)3.0f, (float)4.0f, (float)5.0f)))) == (1.2f));
    }

}
