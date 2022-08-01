# Input to this function is a string representing musical notes in a special ASCII format.
# Your task is to parse this string and return list of integers corresponding to how many beats does each
# not last.
# Here is a legend:
# 'o' - whole note, lasts four beats
# 'o|' - half note, lasts two beats
# '.|' - quater note, lasts one beat
# >>> parse_music('o o| .| o| o| .| .| .| .| o o')
# [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
sub parse_music {
    my($music_string) = @_;
    my @music_notes = split(/\s+/, $music_string);
    my @music_beats;
    for my $note (@music_notes) {
        if ($note eq 'o') {
            push @music_beats, 4;
        } elsif ($note eq 'o|') {
            push @music_beats, 2;
        } elsif ($note eq '.|') {
            push @music_beats, 1;
        }
    }
    return @music_beats;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&parse_music;
    my @arg0 = ();
    if(Compare($candidate->(""),\@arg0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (4, 4, 4, 4);
    if(Compare($candidate->("o o o o"),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (4, 4, 4, 4);
    my @arg2 = (1, 1, 1, 1);
    if(Compare($candidate->(".| .| .| .|"),\@arg2)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (4, 4, 4, 4);
    my @arg2 = (1, 1, 1, 1);
    my @arg3 = (2, 2, 1, 1, 4, 4, 4, 4);
    if(Compare($candidate->("o| o| .| .| o o o o"),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = (4, 4, 4, 4);
    my @arg2 = (1, 1, 1, 1);
    my @arg3 = (2, 2, 1, 1, 4, 4, 4, 4);
    my @arg4 = (2, 1, 2, 1, 4, 2, 4, 2);
    if(Compare($candidate->("o| .| o| .| o o| o o|"),\@arg4)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();