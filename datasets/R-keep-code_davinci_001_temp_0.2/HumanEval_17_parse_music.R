# Input to this function is a string representing musical notes in a special ASCII format.
-- Your task is to parse this string and return list of integers corresponding to how many beats does each
-- not last.
-- Here is a legend:
-- 'o' - whole note, lasts four beats
-- 'o|' - half note, lasts two beats
-- '.|' - quater note, lasts one beat
-- >>> parse_music('o o| .| o| o| .| .| .| .| o o')
-- [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
parse_music <- function(music_string)
{
    # YOUR CODE HERE
    # Parse the string into a list of notes
    notes <- strsplit(music_string, ' ')[[1]]
    # Parse each note into a number of beats
    beats <- c()
    for (i in 1:length(notes)) {
        if (notes[i] == 'o') {
            beats <- c(beats, 4)
        } else if (notes[i] == 'o|') {
            beats <- c(beats, 2)
        } else if (notes[i] == '.|') {
            beats <- c(beats, 1)
        }
    }
    return(beats)

test_humaneval <- function() {
candidate <- parse_music
    if(!identical(candidate(''), c())){quit('no', 1)}
    if(!identical(candidate('o o o o'), c(4, 4, 4, 4))){quit('no', 1)}
    if(!identical(candidate('.| .| .| .|'), c(1, 1, 1, 1))){quit('no', 1)}
    if(!identical(candidate('o| o| .| .| o o o o'), c(2, 2, 1, 1, 4, 4, 4, 4))){quit('no', 1)}
    if(!identical(candidate('o| .| o| .| o o| o o|'), c(2, 1, 2, 1, 4, 2, 4, 2))){quit('no', 1)}
}