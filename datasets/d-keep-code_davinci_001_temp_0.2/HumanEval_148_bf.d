
/*

    There are eight planets in our solar system: the closerst to the Sun 
    is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn, 
    Uranus, Neptune.
    Write a function that takes two planet names as strings planet1 and planet2. 
    The function should return a tuple containing all planets whose orbits are 
    located between the orbit of planet1 and the orbit of planet2, sorted by 
    the proximity to the sun. 
    The function should return an empty tuple if planet1 or planet2
    are not correct planet names. 
    Examples
    bf("Jupiter", "Neptune") ==> ("Saturn", "Uranus")
    bf("Earth", "Mercury") ==> ("Venus")
    bf("Mercury", "Uranus") ==> ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
    
*/
Tuple!(const(char)[], auto) bf(const(char)[] planet1, const(char)[] planet2) 
{
    return Tuple!(const(char)[], auto)();
}

unittest
{
    alias candidate = bf;

    assert(candidate("Jupiter", "Neptune") == tuple("Saturn", "Uranus"));
    assert(candidate("Earth", "Mercury") == tuple("Venus"));
    assert(candidate("Mercury", "Uranus") == tuple("Venus", "Earth", "Mars", "Jupiter", "Saturn"));
    assert(candidate("Neptune", "Venus") == tuple("Earth", "Mars", "Jupiter", "Saturn", "Uranus"));
    assert(candidate("Earth", "Earth") == tuple());
    assert(candidate("Mars", "Earth") == tuple());
    assert(candidate("Jupiter", "Makemake") == tuple());
}
void main(){}