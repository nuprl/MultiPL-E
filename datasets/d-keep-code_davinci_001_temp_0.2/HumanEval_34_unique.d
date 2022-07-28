
/*
Return sorted unique elements in a list
    >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
    [0, 2, 3, 5, 9, 123]
    
*/
int[] unique(int[] l) 
{
    // YOUR CODE HERE
    // HINT: use a set
    Set<Integer> s = new HashSet<Integer>();
    for (int i = 0; i < l.length; i++) {
        s.add(l[i]);
    }
    int[] res = new int[s.size()];
    int j = 0;
    for (int i : s) {
        res[j] = i;
        j++;
    }
    return res;
}

unittest
{
    alias candidate = unique;

    assert(candidate([5, 3, 5, 2, 3, 3, 9, 0, 123]) == [0, 2, 3, 5, 9, 123]);
}
void main(){}