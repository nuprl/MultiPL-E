def checkRecord(s: str) -> bool:
    """
    You are given a string s representing an attendance record for a student where each character signifies whether the student was absent, late, or present on that day. The record only contains the following three characters:

    'A': Absent.
    'L': Late.
    'P': Present.

    The student is eligible for an attendance award if they meet both of the following criteria:

    The student was absent ('A') for strictly fewer than 2 days total.
    The student was never late ('L') for 3 or more consecutive days.

    Return true if the student is eligible for an attendance award, or false otherwise.
 
    Example 1:

    Input: s = "PPALLP"
    Output: true
    Explanation: The student has fewer than 2 absences and was never late 3 or more consecutive days.

    Example 2:

    Input: s = "PPALLL"
    Output: false
    Explanation: The student was late 3 consecutive days in the last 3 days, so is not eligible for the award.

 
    Constraints:

    1 <= s.length <= 1000
    s[i] is either 'A', 'L', or 'P'.

    """
    ### Canonical solution below ###
    late, absent = 0, 0
    for c in s:
        if c == 'A':
            absent += 1
            late = 0
        elif c == 'L':
            late += 1
        else:
            late = 0

        if absent >= 2 or late >= 3:
            return False
    return True




### Unit tests below ###
def check(candidate):
	assert candidate("LPALP") == True
	assert candidate("LLAPLA") == False
	assert candidate("ALPPL") == True
	assert candidate("PLPALAP") == False
	assert candidate(
    "PPALLPALLLPLLALPPALLPALLLPPALPLLALALLPALPPALPLLALPALPALPPLPA"
) == False
	assert candidate("PPPPPPP") == True
	assert candidate("ALLLLL") == False
	assert candidate("ALLAPLP") == False
	assert candidate(
    "PPPALPALPALALALALALPPLALPALPPPPPPPPPPALPPLPA") == False
	assert candidate("ALPPLPP") == True
	assert candidate("PPALLPALLLPLLALPPALLPALLLPPALPLLALALLPALPPALPLLALPALPALPPPLPA") == False
	assert candidate("LPLPLPLPALPLLPLLLLPPPLPLPA") == False
	assert candidate("AALPLPL") == False
	assert candidate("LAPLPLA") == False
	assert candidate(
    "PPLLAPA") == False
	assert candidate("PLPLPL") == True
	assert candidate(
    "AALPALLLPPLPALLLALPPALAALLPALLLPLPALLALPA") == False
	assert candidate("LAPALPL") == False
	assert candidate("PALPLAL") == False
	assert candidate("LALLAPL") == False
	assert candidate("PALPALP") == False
	assert candidate(
    "ALAPLPPLPLALPLPLPLLPLLALPLLALPALPPLLPLPLPALPALALPALPPLPA") == False
	assert candidate("APLAPLL") == False
	assert candidate("PLP") == True
	assert candidate("LLALPAP") == False
	assert candidate("ALPALPALPA") == False
	assert candidate("PPALLL") == False
	assert candidate("APLLALL") == False
	assert candidate("LAPLALP") == False
	assert candidate("LPLPLP") == True
	assert candidate("PALPALPAPA") == False
	assert candidate("PPPPP") == True
	assert candidate("PLPLPLPLPLPLPLPLPLPLLLLLPLPLPLPLPLPLPLPLPLPLPLPLPLPLPLLLLLPLPLPLPLPLPLPLPLPLLLLLPLPLPLPLPLPLPLPLPLPLPLPLLLLLPLPLPLPLPLPLPLPLPLPLPLLLLL") == False
	assert candidate("PPALLP") == True
	assert candidate("APL") == True
	assert candidate("PALAPLL") == False
	assert candidate("APLLLPA") == False
	assert candidate("PALLP") == True
	assert candidate("LLAPLPA") == False
	assert candidate("A") == True
	assert candidate("AALLLL") == False
	assert candidate("LAPLLA") == False
	assert candidate("PA") == True
	assert candidate("ALPALPA") == False
	assert candidate("ALPLPA") == False
	assert candidate("APLPALPALPPLPLLLLPPPLPLPA") == False
	assert candidate("AALPPAP") == False
	assert candidate("L") == True
	assert candidate(
    "PAPLPALLLPLPALPALPLPAALLLPLPPLALALALALAPLPLALPALALALPLALPLLPPPLLPPPLAALLPPPALAALPALPPPLAALLPALPALPPLPPAL") == False
	assert candidate("PPLPLPPPLPLLPLLPLPPLPLPLPLLP") == True
	assert candidate("ALPALPALPPLPLPLPPALPLPLPA") == False
	assert candidate("P") == True
	assert candidate("ALPLALPL") == False
	assert candidate("PPALPPPPALPAPLPALPPPPALPPPPALPPPPPPPPPALPALPLPPPPLPPPPPPPPPPP") == False
	assert candidate("PLA") == True
	assert candidate("ALPPALLPPAPALPLLLPLPPLPLPA") == False
	assert candidate("APLLAP") == False
	assert candidate("LLLAP") == False
	assert candidate("LAPALLL") == False
	assert candidate("LLAP") == True
	assert candidate("APLLPLPPALPALPPPPPALLPALPPLAPALPALPALPPLPALPPALPPALPALPALPALPA") == False
	assert candidate("LLL") == False
	assert candidate("ALLPAPL") == False
	assert candidate("AA") == False
	assert candidate("ALPLPAP") == False
	assert candidate("ALPLLPLPALPPAPALPLLLLPPPLPLPA") == False
	assert candidate(
    "APLPLPLAPLALPALPALPALALLLPLLPLPLPALLPLPLPPLALPALPALPPALPALALPLPPLPALLPALPALPPAPLLLLALPLPPA") == False
	assert candidate("PLALPAP") == False
	assert candidate("PLAPLP") == True
	assert candidate("PALLLLP") == False
	assert candidate("AAPPPLLLLPPAPAPLPLPLPA") == False
	assert candidate("APLPLAL") == False
	assert candidate("LPLLAPA") == False
	assert candidate("APLLPLA") == False
	assert candidate("PLPAPLA") == False
	assert candidate("PPPALPP") == True
	assert candidate("PALLAPL") == False
	assert candidate("PLAPALP") == False
	assert candidate("ALP") == True
	assert candidate("PLAPLLA") == False
	assert candidate("AL") == True
	assert candidate("ALAPLPA") == False
def test_check():
	check(checkRecord)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
