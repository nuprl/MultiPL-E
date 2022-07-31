import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // Write a function which sorts the given list of integers
    // in ascending order according to the sum of their digits.
    // Note: if there are several items with similar sum of their digits,
    // order them based on their index in original list.
    // For example:
    // >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
    // >>> order_by_points([]) == []
    public static ArrayList<Long> order_by_points(ArrayList<Long> nums) {
        // Write your code here
        ArrayList<Long> result = new ArrayList<Long>();
        if (nums.size() == 0) {
            return result;
        }
        HashMap<Long, Integer> map = new HashMap<Long, Integer>();
        for (int i = 0; i < nums.size(); i++) {
            long num = nums.get(i);
            int sum = 0;
            while (num > 0) {
                sum += num % 10;
                num /= 10;
            }
            if (map.containsKey(sum)) {
                map.put(sum, map.get(sum) + 1);
            } else {
                map.put(sum, 1);
            }
        }
        TreeMap<Long, Integer> sortedMap = new TreeMap<Long, Integer>(new Comparator<Long>() {
            @Override
            public int compare(Long o1, Long o2) {
                return o2.compareTo(o1);
            }
        });
        sortedMap.putAll(map);
        for (Map.Entry<Long, Integer> entry : sortedMap.entrySet()) {
            for (int i = 0; i < entry.getValue(); i++) {
                result.add(entry.getKey());
            }
        }
        return result;
    }
    public static void main(String[] args) {
        ArrayList<Long> nums = new ArrayList<Long>();
        nums.add(1);
        nums.add(11);
        nums.add(-1);
        nums.add(-11);
        nums.add(-12);
        System.out.println(order_by_points(nums));
    }
}

    }
    public static void main(String[] args) {
    order_by_points((new ArrayList<Long>(Arrays.asList((long)1l, (long)11l, (long)-1l, (long)-11l, (long)-12l)))).equals((new ArrayList<Long>(Arrays.asList((long)-1l, (long)-11l, (long)1l, (long)-12l, (long)11l))));
    order_by_points((new ArrayList<Long>(Arrays.asList((long)1234l, (long)423l, (long)463l, (long)145l, (long)2l, (long)423l, (long)423l, (long)53l, (long)6l, (long)37l, (long)3457l, (long)3l, (long)56l, (long)0l, (long)46l)))).equals((new ArrayList<Long>(Arrays.asList((long)0l, (long)2l, (long)3l, (long)6l, (long)53l, (long)423l, (long)423l, (long)423l, (long)1234l, (long)145l, (long)37l, (long)46l, (long)56l, (long)463l, (long)3457l))));
    order_by_points((new ArrayList<Long>(Arrays.asList()))).equals((new ArrayList<Long>(Arrays.asList())));
    order_by_points((new ArrayList<Long>(Arrays.asList((long)1l, (long)-11l, (long)-32l, (long)43l, (long)54l, (long)-98l, (long)2l, (long)-3l)))).equals((new ArrayList<Long>(Arrays.asList((long)-3l, (long)-32l, (long)-98l, (long)-11l, (long)1l, (long)2l, (long)43l, (long)54l))));
    order_by_points((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)6l, (long)7l, (long)8l, (long)9l, (long)10l, (long)11l)))).equals((new ArrayList<Long>(Arrays.asList((long)1l, (long)10l, (long)2l, (long)11l, (long)3l, (long)4l, (long)5l, (long)6l, (long)7l, (long)8l, (long)9l))));
    order_by_points((new ArrayList<Long>(Arrays.asList((long)0l, (long)6l, (long)6l, (long)-76l, (long)-21l, (long)23l, (long)4l)))).equals((new ArrayList<Long>(Arrays.asList((long)-76l, (long)-21l, (long)0l, (long)4l, (long)23l, (long)6l, (long)6l))));
    }

}
