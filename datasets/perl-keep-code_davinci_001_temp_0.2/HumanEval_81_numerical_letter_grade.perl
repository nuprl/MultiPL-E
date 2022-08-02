# It is the last week of the semester and the teacher has to give the grades
# to students. The teacher has been making her own algorithm for grading.
# The only problem is, she has lost the code she used for grading.
# She has given you a list of GPAs for some students and you have to write 
# a function that can output a list of letter grades using the following table:
# GPA       |    Letter grade
# 4.0                A+
# > 3.7                A 
# > 3.3                A- 
# > 3.0                B+
# > 2.7                B 
# > 2.3                B-
# > 2.0                C+
# > 1.7                C
# > 1.3                C-
# > 1.0                D+ 
# > 0.7                D 
# > 0.0                D-
# 0.0                E
# Example:
# grade_equation([4.0, 3, 1.7, 2, 3.5]) ==> ['A+', 'B', 'C-', 'C', 'A-']
sub numerical_letter_grade {
    my($grades) = @_;
    my @grades = @$grades;
    my @letter_grades;
    foreach my $grade (@grades) {
        if ($grade >= 4.0) {
            push @letter_grades, 'A+';
        } elsif ($grade >= 3.7) {
            push @letter_grades, 'A';
        } elsif ($grade >= 3.3) {
            push @letter_grades, 'A-';
        } elsif ($grade >= 3.0) {
            push @letter_grades, 'B+';
        } elsif ($grade >= 2.7) {
            push @letter_grades, 'B';
        } elsif ($grade >= 2.3) {
            push @letter_grades, 'B-';
        } elsif ($grade >= 2.0) {
            push @letter_grades, 'C+';
        } elsif ($grade >= 1.7) {
            push @letter_grades, 'C';
        } elsif ($grade >= 1.3) {
            push @letter_grades, 'C-';
        } elsif ($grade >= 1.0) {
            push @letter_grades, 'D+';
        } elsif ($grade >= 0.7) {
            push @letter_grades, 'D';
        } elsif ($grade >= 0.0) {
            push @letter_grades, 'D-';
        } else {
            push @letter_grades, 'E';
        }
    }
    return @letter_grades;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&numerical_letter_grade;
    my @arg0 = (4.0, 3, 1.7, 2, 3.5);
    my @arg1 = ("A+", "B", "C-", "C", "A-");
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4.0, 3, 1.7, 2, 3.5);
    my @arg1 = ("A+", "B", "C-", "C", "A-");
    my @arg2 = (1.2);
    my @arg3 = ("D+");
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4.0, 3, 1.7, 2, 3.5);
    my @arg1 = ("A+", "B", "C-", "C", "A-");
    my @arg2 = (1.2);
    my @arg3 = ("D+");
    my @arg4 = (0.5);
    my @arg5 = ("D-");
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4.0, 3, 1.7, 2, 3.5);
    my @arg1 = ("A+", "B", "C-", "C", "A-");
    my @arg2 = (1.2);
    my @arg3 = ("D+");
    my @arg4 = (0.5);
    my @arg5 = ("D-");
    my @arg6 = (0.0);
    my @arg7 = ("E");
    if(Compare($candidate->(\@arg6),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4.0, 3, 1.7, 2, 3.5);
    my @arg1 = ("A+", "B", "C-", "C", "A-");
    my @arg2 = (1.2);
    my @arg3 = ("D+");
    my @arg4 = (0.5);
    my @arg5 = ("D-");
    my @arg6 = (0.0);
    my @arg7 = ("E");
    my @arg8 = (1.0, 0.3, 1.5, 2.8, 3.3);
    my @arg9 = ("D", "D-", "C-", "B", "B+");
    if(Compare($candidate->(\@arg8),\@arg9)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4.0, 3, 1.7, 2, 3.5);
    my @arg1 = ("A+", "B", "C-", "C", "A-");
    my @arg2 = (1.2);
    my @arg3 = ("D+");
    my @arg4 = (0.5);
    my @arg5 = ("D-");
    my @arg6 = (0.0);
    my @arg7 = ("E");
    my @arg8 = (1.0, 0.3, 1.5, 2.8, 3.3);
    my @arg9 = ("D", "D-", "C-", "B", "B+");
    my @arg10 = (0.0, 0.7);
    my @arg11 = ("E", "D-");
    if(Compare($candidate->(\@arg10),\@arg11)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();