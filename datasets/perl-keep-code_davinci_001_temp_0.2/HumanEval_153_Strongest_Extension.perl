# You will be given the name of a class (a string) and a list of extensions.
# The extensions are to be used to load additional classes to the class. The
# strength of the extension is as follows: Let CAP be the number of the uppercase
# letters in the extension's name, and let SM be the number of lowercase letters 
# in the extension's name, the strength is given by the fraction CAP - SM. 
# You should find the strongest extension and return a string in this 
# format: ClassName.StrongestExtensionName.
# If there are two or more extensions with the same strength, you should
# choose the one that comes first in the list.
# For example, if you are given "Slices" as the class and a list of the
# extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should
# return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension 
# (its strength is -1).
# Example:
# for Strongest_Extension('my_class', ['AA', 'Be', 'CC']) == 'my_class.AA'
sub Strongest_Extension {
    my($class_name, $extensions) = @_;
    my $strongest_extension = '';
    my $strongest_extension_strength = -1;
    foreach my $extension (@$extensions) {
        my $extension_strength = 0;
        foreach my $char (split //, $extension) {
            $extension_strength += ($char =~ /[A-Z]/ ? 1 : -1);
        }
        if ($extension_strength > $strongest_extension_strength) {
            $strongest_extension = $extension;
            $strongest_extension_strength = $extension_strength;
        }
    }
    return "$class_name.$strongest_extension";
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&Strongest_Extension;
    my @arg0 = ("tEN", "niNE", "eIGHt8OKe");
    if(Compare($candidate->("Watashi", \@arg0),"Watashi.eIGHt8OKe")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("tEN", "niNE", "eIGHt8OKe");
    my @arg1 = ("nani", "NazeDa", "YEs.WeCaNe", "32145tggg");
    if(Compare($candidate->("Boku123", \@arg1),"Boku123.YEs.WeCaNe")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("tEN", "niNE", "eIGHt8OKe");
    my @arg1 = ("nani", "NazeDa", "YEs.WeCaNe", "32145tggg");
    my @arg2 = ("t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321");
    if(Compare($candidate->("__YESIMHERE", \@arg2),"__YESIMHERE.NuLl__")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("tEN", "niNE", "eIGHt8OKe");
    my @arg1 = ("nani", "NazeDa", "YEs.WeCaNe", "32145tggg");
    my @arg2 = ("t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321");
    my @arg3 = ("Ta", "TAR", "t234An", "cosSo");
    if(Compare($candidate->("K", \@arg3),"K.TAR")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("tEN", "niNE", "eIGHt8OKe");
    my @arg1 = ("nani", "NazeDa", "YEs.WeCaNe", "32145tggg");
    my @arg2 = ("t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321");
    my @arg3 = ("Ta", "TAR", "t234An", "cosSo");
    my @arg4 = ("Tab", "123", "781345", "-_-");
    if(Compare($candidate->("__HAHA", \@arg4),"__HAHA.123")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("tEN", "niNE", "eIGHt8OKe");
    my @arg1 = ("nani", "NazeDa", "YEs.WeCaNe", "32145tggg");
    my @arg2 = ("t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321");
    my @arg3 = ("Ta", "TAR", "t234An", "cosSo");
    my @arg4 = ("Tab", "123", "781345", "-_-");
    my @arg5 = ("HhAas", "okIWILL123", "WorkOut", "Fails", "-_-");
    if(Compare($candidate->("YameRore", \@arg5),"YameRore.okIWILL123")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("tEN", "niNE", "eIGHt8OKe");
    my @arg1 = ("nani", "NazeDa", "YEs.WeCaNe", "32145tggg");
    my @arg2 = ("t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321");
    my @arg3 = ("Ta", "TAR", "t234An", "cosSo");
    my @arg4 = ("Tab", "123", "781345", "-_-");
    my @arg5 = ("HhAas", "okIWILL123", "WorkOut", "Fails", "-_-");
    my @arg6 = ("Die", "NowW", "Wow", "WoW");
    if(Compare($candidate->("finNNalLLly", \@arg6),"finNNalLLly.WoW")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("tEN", "niNE", "eIGHt8OKe");
    my @arg1 = ("nani", "NazeDa", "YEs.WeCaNe", "32145tggg");
    my @arg2 = ("t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321");
    my @arg3 = ("Ta", "TAR", "t234An", "cosSo");
    my @arg4 = ("Tab", "123", "781345", "-_-");
    my @arg5 = ("HhAas", "okIWILL123", "WorkOut", "Fails", "-_-");
    my @arg6 = ("Die", "NowW", "Wow", "WoW");
    my @arg7 = ("Bb", "91245");
    if(Compare($candidate->("_", \@arg7),"_.Bb")) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("tEN", "niNE", "eIGHt8OKe");
    my @arg1 = ("nani", "NazeDa", "YEs.WeCaNe", "32145tggg");
    my @arg2 = ("t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321");
    my @arg3 = ("Ta", "TAR", "t234An", "cosSo");
    my @arg4 = ("Tab", "123", "781345", "-_-");
    my @arg5 = ("HhAas", "okIWILL123", "WorkOut", "Fails", "-_-");
    my @arg6 = ("Die", "NowW", "Wow", "WoW");
    my @arg7 = ("Bb", "91245");
    my @arg8 = ("671235", "Bb");
    if(Compare($candidate->("Sp", \@arg8),"Sp.671235")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();