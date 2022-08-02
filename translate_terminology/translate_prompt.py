import sys
import re
import csv
import os
from pathlib import Path

def consonant(s):
	return s.lower() not in 'aeiou'

def vowel(s):
	return s.lower() in 'aeiou'

def translate_prompt(target_dict,fields,prompt):
	for f in fields:
		if f in prompt and target_dict[f] != 'Q':
			if 'an '+f in prompt and consonant(target_dict[f][0]):
				prompt = prompt.replace('an '+f,'a '+target_dict[f])
			elif 'a '+f in prompt and vowel(target_dict[f][0]):
				prompt = prompt.replace('a '+f,'an '+target_dict[f])
			else:
				prompt = prompt.replace(f,target_dict[f])		
	return prompt


def main():
	lang_dict = {}
	with open('terms.csv','r') as of:
		term_list = csv.DictReader(of)
		for row in term_list:
			lang_dict[row['language']] = row
		fields = [k.strip() for k in row.keys()]
	print(lang_dict)
	print(fields)

	directory = Path(Path(__file__).parent, "..", "datasets", "originals-with-cleaned-doctests").resolve()
	files = [Path.joinpath(directory,filename) for filename in os.listdir(directory)]
	f = files[4]
	with open(f,'r') as sf:
		print(f)
		src_text = sf.read().replace("'''",'"""')

	before,prompt,after = src_text.split('"""')

	print("PROMPT")
	print(prompt)
	doctestRegex = re.compile(r'>>>.*\n.*\n')
	doctests = []
	for m in re.finditer(doctestRegex,prompt):
		doctests.append((m.start(),m.end()))
	if len(doctests) == 0:
		tar_prompt = translate_prompt(lang_dict[lang],fields,prompt)
	else:
		for lang in lang_dict.keys():
			tar_prompt = ''
			last = 0
			for i in doctests:
				more_prompt = translate_prompt(lang_dict[lang],fields,prompt[last:i[0]])
				more_doctest = prompt[i[0]:i[1]]
				last = i[1]
				tar_prompt += more_prompt+more_doctest
			more_prompt = translate_prompt(lang_dict[lang],fields,prompt[last:])
			tar_prompt += more_prompt
			print(lang,":",tar_prompt)

main()

