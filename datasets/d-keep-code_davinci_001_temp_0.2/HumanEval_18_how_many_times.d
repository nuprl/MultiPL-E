
/*
 Find how many times a given substring can be found in the original string. Count overlaping cases.
    >>> how_many_times('', 'a')
    0
    >>> how_many_times('aaa', 'a')
    3
    >>> how_many_times('aaaa', 'aa')
    3
    
*/
int how_many_times(const(char)[] string, const(char)[] substring) 
{
    int count = 0;
    int i = 0;
    int j = 0;
    while (i < strlen(string)) {
        if (string[i] == substring[j]) {
            i++;
            j++;
            if (j == strlen(substring)) {
                count++;
                j = 0;
            }
        } else {
            i++;
            j = 0;
        }
    }
    return count;
}

unittest
{
    alias candidate = how_many_times;

    assert(candidate("", "x") == 0);
    assert(candidate("xyxyxyx", "x") == 4);
    assert(candidate("cacacacac", "cac") == 4);
    assert(candidate("john doe", "john") == 1);
}
void main(){}