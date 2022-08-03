sub filter_integers {
    my($values) = @_;
    my @result;
    for my $value (@$values) {
        push @result, $value if $value =~ /^-?\d+$/;
    }
    #print("HERE");
    #print(@result);
    return @result;
}
use Test::Deep;

print(eq_deeply(1,()));
print(filter_integers([]));

