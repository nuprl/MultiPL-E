
/*
Given a list of positive integers x. return a sorted list of all 
    elements that hasn't any even digit.

    Note: Returned list should be sorted in increasing order.
    
    For example:
    >>> unique_digits([15, 33, 1422, 1])
    [1, 15, 33]
    >>> unique_digits([152, 323, 1422, 10])
    []
    
*/
int[] unique_digits(int[] x) 
{
    int[] result = new int[x.Length];
    int i = 0;
    foreach (int n in x)
    {
        if (n < 10)
        {
            result[i] = n;
            i++;
        }
        else
        {
            int[] digits = new int[10];
            int j = 0;
            while (n > 0)
            {
                digits[j] = n % 10;
                n = n / 10;
                j++;
            }
            bool flag = true;
            for (int k = 0; k < j; k++)
            {
                if (digits[k] % 2 == 0)
                {
                    flag = false;
                    break;
                }
            }
            if (flag)
            {
                result[i] = n;
                i++;
            }
        }
    }
    int[] result2 = new int[i];
    for (int m = 0; m < i; m++)
    {
        result2[m] = result[m];
    }
    return result2;
}

unittest
{
    alias candidate = unique_digits;

    assert(candidate([15, 33, 1422, 1]) == [1, 15, 33]);
    assert(candidate([152, 323, 1422, 10]) == []);
    assert(candidate([12345, 2033, 111, 151]) == [111, 151]);
    assert(candidate([135, 103, 31]) == [31, 135]);
}
void main(){}