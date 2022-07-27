/// Input to this function is a string representing musical notes in a special ASCII format.
/// Your task is to parse this string and return list of integers corresponding to how many beats does each
/// not last.
/// Here is a legend:
/// 'o' - whole note, lasts four beats
/// 'o|' - half note, lasts two beats
/// '.|' - quater note, lasts one beat
/// >>> parse_music('o o| .| o| o| .| .| .| .| o o')
/// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
fn parse_music(music_string: String) -> Vec<isize> {
    let mut result: Vec<isize> = Vec::new();
    let mut current_beat: isize = 0;
    for c in music_string.chars() {
        match c {
            'o' => {
                current_beat += 4;
                result.push(current_beat);
            }
            'o|' => {
                current_beat += 2;
                result.push(current_beat);
            }
            '.' => {
                current_beat += 1;
                result.push(current_beat);
            }
            _ => {}
        }
    }
    result

}

fn main() {
    let candidate = parse_music;
    assert_eq!(candidate(String::from("")), Vec::<isize>::new());
    assert_eq!(candidate(String::from("o o o o")), vec![4, 4, 4, 4]);
    assert_eq!(candidate(String::from(".| .| .| .|")), vec![1, 1, 1, 1]);
    assert_eq!(candidate(String::from("o| o| .| .| o o o o")), vec![2, 2, 1, 1, 4, 4, 4, 4]);
    assert_eq!(candidate(String::from("o| .| o| .| o o| o o|")), vec![2, 1, 2, 1, 4, 2, 4, 2]);
}
