# Given a string 'text', return its md5 hash equivalent string.
# If 'text' is an empty string, return None.
# >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
sub string_to_md5 {
    my($text) = @_;
    return unless $text;
    return md5_hex($text);
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&string_to_md5;
        if(Compare($candidate->("Hello world"),"3e25960a79dbc69b674cd4ec67a72c62")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(""),#f)) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("A B C"),"0ef78513b0cb8cef12743f5aeb35f888")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("password"),"5f4dcc3b5aa765d61d8327deb882cf99")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();