# Create a function encrypt that takes a string as an argument and
# returns a string encrypted with the alphabet being rotated. 
# The alphabet should be rotated in a manner such that the letters 
# shift down by two multiplied to two places.
# For example:
# encrypt('hi') returns 'lm'
# encrypt('asdfghjkl') returns 'ewhjklnop'
# encrypt('gf') returns 'kj'
# encrypt('et') returns 'ix'
sub encrypt {
    my($s) = @_;
    my $i = 0;
    my $j = 0;
    my $cipher = "";
    my $alpha = "abcdefghijklmnopqrstuvwxyz";
    my $alpha_rot = "cdefghijklmnopqrstuvwxyzab";
    my $alpha_len = length($alpha);
    my $alpha_rot_len = length($alpha_rot);
    while ($i < length($s)) {
        my $char = substr($s, $i, 1);
        my $char_index = index($alpha, $char);
        if ($char_index == -1) {
            $cipher .= $char;
        } else {
            $cipher .= substr($alpha_rot, $char_index + $j * $alpha_rot_len, 1);
            $j++;
        }
        $i++;
    }
    return $cipher;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&encrypt;
        if(Compare($candidate->("hi"),"lm")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("asdfghjkl"),"ewhjklnop")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("gf"),"kj")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("et"),"ix")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("faewfawefaewg"),"jeiajeaijeiak")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("hellomyfriend"),"lippsqcjvmirh")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh"),"hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("a"),"e")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();