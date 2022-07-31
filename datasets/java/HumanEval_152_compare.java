import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // I think we all remember that feeling when the result of some long-awaited
    // event is finally known. The feelings and thoughts you have at that moment are
    // definitely worth noting down and comparing.
    // Your task is to determine if a person correctly guessed the results of a number of matches.
    // You are given two arrays of scores and guesses of equal length, where each index shows a match. 
    // Return an array of the same length denoting how far off each guess was. If they have guessed correctly,
    // the value is 0, and if not, the value is the absolute difference between the guess and the score.
    // example:
    // compare([1,2,3,4,5,1],[1,2,3,4,2,-2]) -> [0,0,0,0,3,3]
    // compare([0,5,0,0,0,4],[4,1,1,0,0,-2]) -> [4,4,1,0,0,6]
    public static ArrayList<Long> compare(ArrayList<Long> game, ArrayList<Long> guess) {
        ArrayList<Long> result = new ArrayList<>();
        for (int i = 0; i < game.size(); i++) {
            result.add(Math.abs(game.get(i) - guess.get(i)));
        }
        return result;
    }
    public static void main(String[] args) {
        ArrayList<Long> game = new ArrayList<>();
        ArrayList<Long> guess = new ArrayList<>();
        game.add(1L);
        game.add(2L);
        game.add(3L);
        game.add(4L);
        game.add(5L);
        game.add(1L);
        guess.add(1L);
        guess.add(2L);
        guess.add(3L);
        guess.add(4L);
        guess.add(2L);
        guess.add(-2L);
        System.out.println(compare(game, guess));
    }
}

    }
    public static void main(String[] args) {
    compare((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)5l, (long)1l))), (new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)4l, (long)2l, (long)-2l)))).equals((new ArrayList<Long>(Arrays.asList((long)0l, (long)0l, (long)0l, (long)0l, (long)3l, (long)3l))));
    compare((new ArrayList<Long>(Arrays.asList((long)0l, (long)0l, (long)0l, (long)0l, (long)0l, (long)0l))), (new ArrayList<Long>(Arrays.asList((long)0l, (long)0l, (long)0l, (long)0l, (long)0l, (long)0l)))).equals((new ArrayList<Long>(Arrays.asList((long)0l, (long)0l, (long)0l, (long)0l, (long)0l, (long)0l))));
    compare((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l))), (new ArrayList<Long>(Arrays.asList((long)-1l, (long)-2l, (long)-3l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)4l, (long)6l))));
    compare((new ArrayList<Long>(Arrays.asList((long)1l, (long)2l, (long)3l, (long)5l))), (new ArrayList<Long>(Arrays.asList((long)-1l, (long)2l, (long)3l, (long)4l)))).equals((new ArrayList<Long>(Arrays.asList((long)2l, (long)0l, (long)0l, (long)1l))));
    }

}
