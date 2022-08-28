---
layout: default
title: Examples
nav_order: 100
---

# Example of Generated Programs

One of MultiPL-E's benefits is that it allows us to compare generated programs across languages for the 
same prompt. Below are a selection of programs we find interesting that show the range of possible 
generated programs.

## Strings to MD5

The below example is HumanEval's Prompt #162. 

The canonical solution provided by HumanEval imports `hashlib` to accomplish the task:

```python
def string_to_md5(text: str) -> Optional[str]:
    """
    Given a string 'text', return its md5 hash equivalent string.
    If 'text' is an empty string, return None.

    >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
    """
    ### Canonical solution below ###
    import hashlib
    return hashlib.md5(text.encode('ascii')).hexdigest() if text else None
```

This bash program generates a call to `md5sum` program:

[//]: # sh-davinci-0.2-remove/HumanEval_162_string_to_md5.results.yaml - 0

```bash
#!/bin/bash
# Given a string 'text', return its md5 hash equivalent string.
# If 'text' is an empty string, return None.
#
# $1 is a string
string_to_md5() {
    if [ -z "$1" ]; then
        echo -n "None"
    else
        echo -n "$1" | md5sum | cut -d ' ' -f 1
    fi
}
```

In contrast, the below JavaScript completion requires the built-in `crypto` package, hinting that it assumes the code will run under Node.js:

```javascript
//Given a string 'text', return its md5 hash equivalent string.
// If 'text' is an empty string, return None.
function string_to_md5(text){
    if(text == ""){
        return null;
    }
    var md5 = require('crypto').createHash('md5');
    md5.update(text);
    return md5.digest('hex');
}
```

## Sort Words Representing Digits Numerically

Prompt #19 presents the task of sorting the string literals `'zero'` to `'nine'` by their numerical value (i.e. 0 to 9) in increasing order.

One generated Java program hard-codes the word-value correspondence into a `switch` statement:

```java
// Input is a space-delimited string of numberals from 'zero' to 'nine'.
// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
// Return the string with numbers sorted from smallest to largest
public static String sortNumbers(String numbers) {
    String[] nums = numbers.split(" ");
    List<Integer> numList = new ArrayList<>();
    for (String num : nums) {
        switch (num) {
            case "zero":
                numList.add(0);
                break;
            case "one":
                numList.add(1);
                break;
            case "two":
                numList.add(2);
                break;
            case "three":
                numList.add(3);
                break;
            case "four":
                numList.add(4);
                break;
            case "five":
                numList.add(5);
                break;
            case "six":
                numList.add(6);
                break;
            case "seven":
                numList.add(7);
                break;
            case "eight":
                numList.add(8);
                break;
            case "nine":
                numList.add(9);
                break;
        }
    }
    Collections.sort(numList);
    StringBuilder sb = new StringBuilder();
    for (int num : numList) {
        switch (num) {
            case 0:
                sb.append("zero ");
                break;
            case 1:
                sb.append("one ");
                break;
            case 2:
                sb.append("two ");
                break;
            case 3:
                sb.append("three ");
                break;
            case 4:
                sb.append("four ");
                break;
            case 5:
                sb.append("five ");
                break;
            case 6:
                sb.append("six ");
                break;
            case 7:
                sb.append("seven ");
                break;
            case 8:
                sb.append("eight ");
                break;
            case 9:
                sb.append("nine ");
                break;
        }
    }
    return sb.toString().trim();
}
```

In contrast, a generated JavaScript program encodes the correspondence into a map:

```js
//Input is a space-delimited string of numberals from 'zero' to 'nine'.
// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
// Return the string with numbers sorted from smallest to largest
function sort_numbers(numbers){
    var nums = numbers.split(' ');
    var nums_map = {
        'zero': 0,
        'one': 1,
        'two': 2,
        'three': 3,
        'four': 4,
        'five': 5,
        'six': 6,
        'seven': 7,
        'eight': 8,
        'nine': 9
    };
    var nums_sorted = nums.sort(function(a, b){
        return nums_map[a] - nums_map[b];
    });
    return nums_sorted.join(' ');
}
```

Much to our surprise, bash is able to use the array syntax to accomplish the task and passes the provided unit tests:

[//]: # sh-davinci-0.2-remove/HumanEval_19_sort_numbers.results.yaml - 178

```bash
#!/bin/bash
# Input is a space-delimited string of numberals from 'zero' to 'nine'.
# Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
# Return the string with numbers sorted from smallest to largest
#
# $1 is a string
sort_numbers() {
  local numbers="$1"
  local -A number_map
  number_map=([zero]=0 [one]=1 [two]=2 [three]=3 [four]=4 [five]=5 [six]=6 [seven]=7 [eight]=8 [nine]=9)
  local -a number_array
  local -i i=0
  for number in $numbers; do
    number_array[i]=${number_map[$number]}
    ((i++))
  done
  local sorted_numbers=$(printf "%s\n" "${number_array[@]}" | sort -n | tr '\n' ' ')
  local -a sorted_number_array
  i=0
  for number in $sorted_numbers; do
    for key in "${!number_map[@]}"; do
      if [[ ${number_map[$key]} -eq $number ]]; then
        sorted_number_array[i]=$key
        ((i++))
      fi
    done
  done
  echo "${sorted_number_array[@]}"
}
```

## Similar Logic, Different Languages

HumanEval's Prompt #40 is similar in flavor to some interview questions: the problem prompts the generation of a function which
answers whether there is three numbers in a list that sums up to 0.

Most of the code generated by Codex Davinci uses triple nested loops:

[//]: # experiments/py-davinci-0.2-keep/HumanEval_40_triples_sum_to_zero.results.yaml - 181

```python
# Docstring removed for brevity 
def triples_sum_to_zero(l: List[int]) -> bool:
    # base case
    if len(l) < 3:
        return False
    # recursive case
    else:
        for i in range(len(l)):
            for j in range(i+1, len(l)):
                for k in range(j+1, len(l)):
                    if l[i] + l[j] + l[k] == 0:
                        return True
        return False
```

Note the incorrectly generated comment "recurisve case" for what is clearly a loop solution, not a recursive one. 

However, Codex can generate a more efficient solution as seen below:

```python
def triples_sum_to_zero(l: List[int]) -> bool:
    # sort the list
    l.sort()
    # iterate over the list
    for i in range(len(l)):
        # set the left and right pointers
        left = i + 1
        right = len(l) - 1
        # iterate over the list
        while left < right:
            # check if the sum of the three elements is zero
            if l[i] + l[left] + l[right] == 0:
                # return True if it is
                return True
            # check if the sum of the three elements is less than zero
            elif l[i] + l[left] + l[right] < 0:
                # increment the left pointer
                left += 1
            # check if the sum of the three elements is greater than zero
            elif l[i] + l[left] + l[right] > 0:
                # decrement the right pointer
                right -= 1
    # return False if there are no three elements that sum to zero
    return False
```

In Java, we can see a logically similar solution as below:

```java
// Java
class Problem {
    public static boolean triplesSumToZero(ArrayList<Long> l) {
        if (l.size() < 3) {
            return false;
        }
        Collections.sort(l);
        for (int i = 0; i < l.size() - 2; i++) {
            int j = i + 1;
            int k = l.size() - 1;
            while (j < k) {
                long sum = l.get(i) + l.get(j) + l.get(k);
                if (sum == 0) {
                    return true;
                } else if (sum < 0) {
                    j++;
                } else {
                    k--;
                }
            }
        }
        return false;
    }
```

A generated solution in Julia follows this pattern, but this time with comments: 
```julia
# Julia
function triples_sum_to_zero(l::Vector{Int64})::Bool 
    # check if the length of the list is less than 3
    if length(l) < 3
        return false
    end
    # sort the list
    l = sort(l)
    # iterate through the list
    for i in 1:length(l)-2
        # set the left and right pointers
        left = i + 1
        right = length(l)
        # iterate through the list
        while left < right
            # check if the sum of the three elements is zero
            if l[i] + l[left] + l[right] == 0
                return true
            # check if the sum of the three elements is greater than zero
            elseif l[i] + l[left] + l[right] > 0
                right -= 1
            # check if the sum of the three elements is less than zero
            elseif l[i] + l[left] + l[right] < 0
                left += 1
            end
        end
    end
    return false
end
```
