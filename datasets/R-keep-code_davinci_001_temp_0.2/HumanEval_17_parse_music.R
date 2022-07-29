# Input to this function is a string representing musical notes in a special ASCII format.
# Your task is to parse this string and return list of integers corresponding to how many beats does each
# not last.
# Here is a legend:
# 'o' - whole note, lasts four beats
# 'o|' - half note, lasts two beats
# '.|' - quater note, lasts one beat
# >>> parse_music('o o| .| o| o| .| .| .| .| o o')
# [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
parse_music <- function(music_string) {
    music_string <- strsplit(music_string, split = ' ')
    music_string <- unlist(music_string)
    music_string <- strsplit(music_string, split = '|')
    music_string <- unlist(music_string)
    music_string <- as.numeric(music_string)
    return(music_string)
}


test_humaneval <- function() {
candidate <- parse_music
    if(!identical(candidate(''), list())){quit('no', 1)}
    if(!identical(candidate('o o o o'), list(4, 4, 4, 4))){quit('no', 1)}
    if(!identical(candidate('.| .| .| .|'), list(1, 1, 1, 1))){quit('no', 1)}
    if(!identical(candidate('o| o| .| .| o o o o'), list(2, 2, 1, 1, 4, 4, 4, 4))){quit('no', 1)}
    if(!identical(candidate('o| .| o| .| o o| o o|'), list(2, 1, 2, 1, 4, 2, 4, 2))){quit('no', 1)}
}
test_humaneval()