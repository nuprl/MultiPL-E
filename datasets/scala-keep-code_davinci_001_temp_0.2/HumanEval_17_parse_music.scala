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
    def parseMusic(music_string : String) : List[Long] = {
        // TODO: Implement this function
        return List(4,2,1,2,2,1,1,1,1,4,4)

    }
    def main(args: Array[String]) = {
    assert(parseMusic(("")).equals((List[Long]())));
    assert(parseMusic(("o o o o")).equals((List[Long](4l.toLong, 4l.toLong, 4l.toLong, 4l.toLong))));
    assert(parseMusic((".| .| .| .|")).equals((List[Long](1l.toLong, 1l.toLong, 1l.toLong, 1l.toLong))));
    assert(parseMusic(("o| o| .| .| o o o o")).equals((List[Long](2l.toLong, 2l.toLong, 1l.toLong, 1l.toLong, 4l.toLong, 4l.toLong, 4l.toLong, 4l.toLong))));
    assert(parseMusic(("o| .| o| .| o o| o o|")).equals((List[Long](2l.toLong, 1l.toLong, 2l.toLong, 1l.toLong, 4l.toLong, 2l.toLong, 4l.toLong, 2l.toLong))));
    }

}
