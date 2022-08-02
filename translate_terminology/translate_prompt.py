import sys
import re
import csv
import os
from pathlib import Path

lang_dict = {}
with open('terms.csv','r') as of:
	term_list = csv.DictReader(of)
	for row in term_list:
		lang_dict[row['Python']] = row
	fields = [k.strip() for k in row.keys()]

def consonant(s):
	return s.lower() not in 'aeiou'

def vowel(s):
	return s.lower() in 'aeiou'

def translate_terms(language,fields,prompt):
	"""
	Takes a programming language name, a list of vocabulary words to translate, and a portion of docstring text.
	Returns the docstring text with Python-specific vocab translated to the target language.
	"""
	target_dict = lang_dict[language]
	for f in fields:
		if f in prompt and target_dict[f] != 'Q':
			if 'an '+f in prompt and consonant(target_dict[f][0]):
				prompt = prompt.replace('an '+f,'a '+target_dict[f])
			elif 'a '+f in prompt and vowel(target_dict[f][0]):
				prompt = prompt.replace('a '+f,'an '+target_dict[f])
			prompt = prompt.replace(f,target_dict[f])	#can't be an else: need to catch 2nd occurences of term that don't have article
	return prompt


def translate_prompt(language, example):
	"""
	Takes a programming language name and the text of a python file.
	Translates Python-specific terms in natural language portions of the docstring to the target language.
	Returns the full text of the python file with translated natural language docstring.
	"""
	before,prompt,after = example.split('"""')
	doctestRegex = re.compile(r'>>>.*\n.*\n')
	doctests = []
	for m in re.finditer(doctestRegex,prompt):
		doctests.append((m.start(),m.end()))
	if len(doctests) == 0:
		tar_prompt = translate_terms(language,fields,prompt)
	else:
		tar_prompt = ''
		last = 0
		for i in doctests:
			more_prompt = translate_terms(language,fields,prompt[last:i[0]])
			more_doctest = prompt[i[0]:i[1]]
			last = i[1]
			tar_prompt += more_prompt+more_doctest
		tar_prompt += translate_terms(language,fields,prompt[last:])

	print(language+':',tar_prompt)
	return before+tar_prompt+after


def main():
	directory = Path(Path(__file__).parent, "..", "datasets", "originals-with-cleaned-doctests").resolve()
	files = [Path.joinpath(directory,filename) for filename in os.listdir(directory)]
	f = files[int(sys.argv[1])]
	with open(f,'r') as sf:
		src_text = sf.read().replace("'''",'"""')
		for k in lang_dict.keys():
			translate_prompt(k,src_text)
		translate_prompt("Python",src_text)
		print(f)


main()

