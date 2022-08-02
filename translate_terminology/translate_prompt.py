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
	print(re.sub(doctestRegex,'',prompt))
	bits = re.split(doctestRegex, prompt)
	bits = [b for b in bits if b.strip() != '']
	if len(bits) == 2:
		before,after = bits
	elif len(bits) == 1:
		before = bits[0]
		after = ''
	else:
		print("unexpected length!")
		print(bits)

	doctest = re.search(doctestRegex, prompt)
	if doctest:
		doctest = doctest.group(0)
	else: 
		doctest = ''

	for lang in lang_dict.keys():
		tar_before = translate_prompt(lang_dict[lang],fields,before)
		tar_after = translate_prompt(lang_dict[lang],fields,after)
		print(lang,":",tar_before+doctest+tar_after)

main()

