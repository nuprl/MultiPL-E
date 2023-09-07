from typing import List


def destCity(paths: List[List[str]]) -> str:
    """
    You are given the array paths, where paths[i] = [cityAi, cityBi] means there exists a direct path going from cityAi to cityBi. Return the destination city, that is, the city without any path outgoing to another city.
    It is guaranteed that the graph of paths forms a line without any loop, therefore, there will be exactly one destination city.
 
    Example 1:

    Input: paths = [["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]]
    Output: "Sao Paulo" 
    Explanation: Starting at "London" city you will reach "Sao Paulo" city which is the destination city. Your trip consist of: "London" -> "New York" -> "Lima" -> "Sao Paulo".

    Example 2:

    Input: paths = [["B","C"],["D","B"],["C","A"]]
    Output: "A"
    Explanation: All possible trips are: 
    "D" -> "B" -> "C" -> "A". 
    "B" -> "C" -> "A". 
    "C" -> "A". 
    "A". 
    Clearly the destination city is "A".

    Example 3:

    Input: paths = [["A","Z"]]
    Output: "Z"

 
    Constraints:

    1 <= paths.length <= 100
    paths[i].length == 2
    1 <= cityAi.length, cityBi.length <= 10
    cityAi != cityBi
    All strings consist of lowercase and uppercase English letters and the space character.

    """
    ### Canonical solution below ###
    starting_cities = set()

    for path in paths:
        starting_cities.add(path[0])

    for path in paths:
        if path[1] not in starting_cities:
            return path[1]

    return ""




### Unit tests below ###
def check(candidate):
	assert candidate([["Tokyo","Osaka"],["Osaka","Kyoto"],["Kyoto","Nara"]]) == "Nara"
	assert candidate([["Buenos Aires","Brasilia"],["Brasilia","La Paz"],["La Paz","Santiago"]]) == "Santiago"
	assert candidate([["Paris","Lyon"],["Lyon","Marseille"],["Marseille","Nice"]]) == "Nice"
	assert candidate([["A","Z"]]) == "Z"
	assert candidate([["Madrid", "Barcelona"], ["Barcelona", "Valencia"], ["Valencia", "Murcia"]]) == "Murcia"
	assert candidate([["Athens","Thessaloniki"],["Thessaloniki","Patras"]]) == "Patras"
	assert candidate([["Stockholm", "Malmo"], ["Malmo", "Copenhagen"], ["Copenhagen", "Berlin"]]) == "Berlin"
	assert candidate([["A","B"],["B","C"],["C","D"],["D","E"]]) == "E"
	assert candidate([["Osaka","Sapporo"],["Sapporo","Tokyo"]]) == "Tokyo"
	assert candidate([["Rome", "Florence"], ["Florence", "Sienna"], ["Sienna", "Milan"], ["Milan", "Genoa"]]) == "Genoa"
	assert candidate([["Istanbul","Ankara"],["Ankara","Izmir"]]) == "Izmir"
	assert candidate([["Vancouver","Calgary"],["Calgary","Edmonton"]]) == "Edmonton"
	assert candidate([["Sydney", "Melbourne"], ["Melbourne", "Adelaide"], ["Adelaide", "Perth"]]) == "Perth"
	assert candidate([["Sofia","Plovdiv"],["Plovdiv","Varna"],["Varna","Bucharest"]]) == "Bucharest"
	assert candidate([["New York","Los Angeles"],["Los Angeles","Miami"]]) == "Miami"
	assert candidate([["New York", "Phoenix"], ["Phoenix", "Denver"], ["Denver", "Kansas City"]]) == "Kansas City"
	assert candidate([["Essen","Dusseldorf"],["Dusseldorf","Stuttgart"],["Stuttgart","Munich"]]) == "Munich"
	assert candidate([["Bogota", "Medellin"], ["Medellin", "Buenos Aires"], ["Buenos Aires", "Santiago"]]) == "Santiago"
	assert candidate([["A","B"],["B","C"]]) == "C"
	assert candidate([["Mexico City","Guadalajara"],["Guadalajara","Monterrey"]]) == "Monterrey"
	assert candidate([["Stuttgart", "Dusseldorf"], ["Dusseldorf", "Hamburg"], ["Hamburg", "Berlin"]]) == "Berlin"
	assert candidate([["Tokyo","Osaka"],["Osaka","Kyoto"]]) == "Kyoto"
	assert candidate([["New York","Chicago"],["Chicago","Los Angeles"],["Los Angeles","Boston"],["Boston","Miami"]]) == "Miami"
	assert candidate([["A","B"],["B","C"],["C","A"]]) == ""
	assert candidate([["Rome", "Florence"], ["Florence", "Venice"], ["Venice", "Milan"]]) == "Milan"
	assert candidate([["Seoul", "Buenos Aires"], ["Buenos Aires", "Santiago"]]) == "Santiago"
	assert candidate([["Lisbon","Madrid"],["Madrid","Barcelona"]]) == "Barcelona"
	assert candidate([["Stockholm","Helsinki"],["Helsinki","Riga"],["Riga","Kiev"]]) == "Kiev"
	assert candidate([["Sydney","Canberra"],["Canberra","Melbourne"]]) == "Melbourne"
	assert candidate([["A","B"],["A","C"]]) == "B"
	assert candidate([["Jakarta","Surabaya"],["Surabaya","Jayapura"]]) == "Jayapura"
	assert candidate([["Djibouti","Addis Ababa"],["Addis Ababa","Asmara"],["Asmara","Juba"]]) == "Juba"
	assert candidate([["LA","SF"],["NYC","LA"],["Chicago","NYC"]]) == "SF"
	assert candidate([["New York","Chicago"],["Chicago","Los Angeles"],["Los Angeles","Boston"]]) == "Boston"
	assert candidate([["London","Paris"],["Moscow","London"]]) == "Paris"
	assert candidate([["Rome", "Florence"], ["Florence", "Siena"], ["Siena", "Genoa"]]) == "Genoa"
	assert candidate([["Dubai","Abu Dhabi"],["Abu Dhabi","Al Ain"]]) == "Al Ain"
	assert candidate([["Oslo","Moscow"],["Moscow","Sevastopol"]]) == "Sevastopol"
	assert candidate([["Doha","Abu Dhabi"],["Abu Dhabi","Delhi"],["Delhi","Kathmandu"]]) == "Kathmandu"
	assert candidate([["Bucharest","Giurgiu"],["Giurgiu","Urziceni"]]) == "Urziceni"
	assert candidate([["New York","Chicago"]]) == "Chicago"
	assert candidate([["Prague", "Berlin"], ["Berlin", "Copenhagen"]]) == "Copenhagen"
	assert candidate([["Mumbai", "Pune"], ["Pune", "Hyderabad"], ["Hyderabad", "Chennai"], ["Chennai", "Bangalore"]]) == "Bangalore"
	assert candidate([["A","B"]]) == "B"
	assert candidate([["Bucharest","Sibiu"],["Sibiu","Fagaras"],["Fagaras","Bratislava"]]) == "Bratislava"
	assert candidate([["Bangkok","Chiang Mai"],["Chiang Mai","Hua Hin"]]) == "Hua Hin"
	assert candidate([["Rome", "Florence"], ["Florence", "Sienna"]]) == "Sienna"
	assert candidate([["Sao Paulo","Rio"],["Rio","Brasilia"]]) == "Brasilia"
	assert candidate([["Toronto","Montreal"],["Montreal","Quebec City"]]) == "Quebec City"
	assert candidate([["Rome", "Florence"], ["Florence", "Siena"], ["Siena", "Milan"]]) == "Milan"
	assert candidate([["Philadelphia","Atlanta"],["Atlanta","New York"],["New York","Dallas"]]) == "Dallas"
	assert candidate([["A","B"],["A","B"]]) == "B"
	assert candidate([["Toronto","Hamilton"],["Hamilton","New York"],["New York","Montreal"],["Montreal","San Francisco"],["San Francisco","Boston"]]) == "Boston"
	assert candidate([["Rome", "Florence"], ["Florence", "Milan"]]) == "Milan"
	assert candidate([["Beijing","Shanghai"],["Shanghai","Guangzhou"],["Guangzhou","Shenzhen"]]) == "Shenzhen"
	assert candidate([["Dubai","Abu Dhabi"],["Abu Dhabi","Sharjah"]]) == "Sharjah"
	assert candidate([["Paris", "Marseille"], ["Marseille", "Bordeaux"]]) == "Bordeaux"
def test_check():
	check(destCity)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
