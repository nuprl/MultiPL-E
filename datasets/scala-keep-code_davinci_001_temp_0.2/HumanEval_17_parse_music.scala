import scala.math._
import scala.collection.mutable._
object Problem {
    // Input to this function is a string representing musical notes in a special ASCII format.
    // Your task is to parse this string and return list of integers corresponding to how many beats does each
    // not last.
    // Here is a legend:
    // 'o' - whole note, lasts four beats
    // 'o|' - half note, lasts two beats
    // '.|' - quater note, lasts one beat
    // >>> parse_music('o o| .| o| o| .| .| .| .| o o')
    // [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
    def parseMusic(music_string : String) : List[Int] = {
        // your code here
        var music_list = music_string.split(" ")
        var result = List[Int]()
        for(i <- 0 until music_list.length){
            if(music_list(i).length == 1){
                result = result :+ 4
            }else if(music_list(i).length == 2){
                result = result :+ 2
            }else if(music_list(i).length == 3){
                result = result :+ 1
            }
        }
        return result

    }
    def main(args: Array[String]) = {
    assert(parseMusic(("")).equals((List[Int]())));
    assert(parseMusic(("o o o o")).equals((List[Int](4.toInt, 4.toInt, 4.toInt, 4.toInt))));
    assert(parseMusic((".| .| .| .|")).equals((List[Int](1.toInt, 1.toInt, 1.toInt, 1.toInt))));
    assert(parseMusic(("o| o| .| .| o o o o")).equals((List[Int](2.toInt, 2.toInt, 1.toInt, 1.toInt, 4.toInt, 4.toInt, 4.toInt, 4.toInt))));
    assert(parseMusic(("o| .| o| .| o o| o o|")).equals((List[Int](2.toInt, 1.toInt, 2.toInt, 1.toInt, 4.toInt, 2.toInt, 4.toInt, 2.toInt))));
    }

}
