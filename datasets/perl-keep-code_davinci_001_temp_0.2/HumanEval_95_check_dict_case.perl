# Given a dictionary, return True if all keys are strings in lower 
# case or all keys are strings in upper case, else return False.
# The function should return False is the given dictionary is empty.
# Examples:
# check_dict_case({"a":"apple", "b":"banana"}) should return True.
# check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
# check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
# check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
# check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
sub check_dict_case {
    my($dict) = @_;
    my $is_lower = 1;
    my $is_upper = 1;
    foreach my $key (keys %$dict) {
        if ($key =~ /[A-Z]/) {
            $is_lower = 0;
        }
        if ($key =~ /[a-z]/) {
            $is_upper = 0;
        }
    }
    return $is_lower || $is_upper;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&check_dict_case;
        if(Compare($candidate->(("p" => "pineapple", "b" => "banana",)),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(("p" => "pineapple", "A" => "banana", "B" => "banana",)),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(("p" => "pineapple", "5" => "banana", "a" => "apple",)),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(("Name" => "John", "Age" => "36", "City" => "Houston",)),"")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(("STATE" => "NC", "ZIP" => "12345",)),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(("fruit" => "Orange", "taste" => "Sweet",)),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->((,)),"")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();