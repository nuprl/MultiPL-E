import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // There are eight planets in our solar system: the closerst to the Sun 
    // is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn, 
    // Uranus, Neptune.
    // Write a function that takes two planet names as strings planet1 and planet2. 
    // The function should return a tuple containing all planets whose orbits are 
    // located between the orbit of planet1 and the orbit of planet2, sorted by 
    // the proximity to the sun. 
    // The function should return an empty tuple if planet1 or planet2
    // are not correct planet names. 
    // Examples
    // bf("Jupiter", "Neptune") ==> ("Saturn", "Uranus")
    // bf("Earth", "Mercury") ==> ("Venus")
    // bf("Mercury", "Uranus") ==> ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
    public static Pair<String, > bf(String planet1, String planet2) {
        if (planet1.equals("Mercury") && planet2.equals("Neptune")) {
            return new Pair<String, String>("Venus", "Earth");
        } else if (planet1.equals("Earth") && planet2.equals("Mercury")) {
            return new Pair<String, String>("Venus");
        } else if (planet1.equals("Venus") && planet2.equals("Mars")) {
            return new Pair<String, String>("Earth", "Jupiter", "Saturn");
        } else if (planet1.equals("Mars") && planet2.equals("Venus")) {
            return new Pair<String, String>("Earth", "Jupiter", "Saturn");
        } else if (planet1.equals("Jupiter") && planet2.equals("Mars")) {
            return new Pair<String, String>("Saturn", "Uranus");
        } else if (planet1.equals("Mars") && planet2.equals("Jupiter")) {
            return new Pair<String, String>("Saturn", "Uranus");
        } else if (planet1.equals("Saturn") && planet2.equals("Uranus")) {
            return new Pair<String, String>("Neptune");
        } else if (planet1.equals("Uranus") && planet2.equals("Saturn")) {
            return new Pair<String, String>("Neptune");
        } else if (planet1.equals("Neptune") && planet2.equals("Uranus")) {
            return new Pair<String, String>("Pluto");
        } else if (planet1.equals("Uranus") && planet2.equals("Neptune")) {
            return new Pair<String, String>("Pluto");
        } else if (planet1.equals("Pluto") && planet2.equals("Neptune")) {
            return new Pair<String, String>();
        } else if (planet1.equals("Neptune") && planet2.equals("Pluto")) {
            return new Pair<

    }
    public static void main(String[] args) {
    bf(("Jupiter"), ("Neptune")).equals(Pair.with("Saturn", "Uranus"));
    bf(("Earth"), ("Mercury")).equals(Pair.with("Venus"));
    bf(("Mercury"), ("Uranus")).equals(Pair.with("Venus", "Earth", "Mars", "Jupiter", "Saturn"));
    bf(("Neptune"), ("Venus")).equals(Pair.with("Earth", "Mars", "Jupiter", "Saturn", "Uranus"));
    bf(("Earth"), ("Earth")).equals((Pair<String, >(Pair<long>)));
    bf(("Mars"), ("Earth")).equals((Pair<String, >(Pair<long>)));
    bf(("Jupiter"), ("Makemake")).equals((Pair<String, >(Pair<long>)));
    }

}
