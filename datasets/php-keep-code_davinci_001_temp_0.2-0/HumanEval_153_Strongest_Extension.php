<?php
// You will be given the name of a class (a string) and a list of extensions.
// The extensions are to be used to load additional classes to the class. The
// strength of the extension is as follows: Let CAP be the number of the uppercase
// letters in the extension's name, and let SM be the number of lowercase letters 
// in the extension's name, the strength is given by the fraction CAP - SM. 
// You should find the strongest extension and return a string in this 
// format: ClassName.StrongestExtensionName.
// If there are two or more extensions with the same strength, you should
// choose the one that comes first in the list.
// For example, if you are given "Slices" as the class and a list of the
// extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should
// return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension 
// (its strength is -1).
// Example:
// for Strongest_Extension('my_class', ['AA', 'Be', 'CC']) == 'my_class.AA'
function Strongest_Extension($class_name, $extensions) {
    $extensions = array_map(function($extension){
        return strtolower($extension);
    }, $extensions);
    $extensions = array_map(function($extension){
        $CAP = 0;
        $SM = 0;
        for($i = 0; $i < strlen($extension); $i++){
            if(strtoupper($extension[$i]) == $extension[$i]){
                $CAP++;
            }else{
                $SM++;
            }
        }
        return [$extension, $CAP - $SM];
    }, $extensions);
    $extensions = array_map(function($extension){
        return $extension[1];
    }, $extensions);
    $extensions = array_unique($extensions);
    $extensions = array_values($extensions);
    $extensions = array_map(function($extension){
        return $extension[0];
    }, $extensions);
    $extensions = array_flip($extensions);
    $extensions = array_keys($extensions);
    $extensions = array_values($extensions);
    $extensions = array_map(function($extension){
        return $class_name . '.' . $extension;
    }, $extensions);
    return $extensions[0];
}

$class_name = 'my_class';
$extensions = ['AA', 'Be', 'CC'];
echo Strongest_Extension($class_name, $extensions);

function candidate(...$args) {
    return Strongest_Extension(...$args);
}

function test(): void {
    if (candidate("Watashi", array("tEN", "niNE", "eIGHt8OKe")) !== "Watashi.eIGHt8OKe") { throw new Exception("Test failed!"); }
    if (candidate("Boku123", array("nani", "NazeDa", "YEs.WeCaNe", "32145tggg")) !== "Boku123.YEs.WeCaNe") { throw new Exception("Test failed!"); }
    if (candidate("__YESIMHERE", array("t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321")) !== "__YESIMHERE.NuLl__") { throw new Exception("Test failed!"); }
    if (candidate("K", array("Ta", "TAR", "t234An", "cosSo")) !== "K.TAR") { throw new Exception("Test failed!"); }
    if (candidate("__HAHA", array("Tab", "123", "781345", "-_-")) !== "__HAHA.123") { throw new Exception("Test failed!"); }
    if (candidate("YameRore", array("HhAas", "okIWILL123", "WorkOut", "Fails", "-_-")) !== "YameRore.okIWILL123") { throw new Exception("Test failed!"); }
    if (candidate("finNNalLLly", array("Die", "NowW", "Wow", "WoW")) !== "finNNalLLly.WoW") { throw new Exception("Test failed!"); }
    if (candidate("_", array("Bb", "91245")) !== "_.Bb") { throw new Exception("Test failed!"); }
    if (candidate("Sp", array("671235", "Bb")) !== "Sp.671235") { throw new Exception("Test failed!"); }
}

test();