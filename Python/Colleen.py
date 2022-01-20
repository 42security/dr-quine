# comment
def colleen(s):
	print(s.format(s = s, c = chr(34)))

if __name__ == '__main__':
	# comment
	s = """# comment
def colleen(s):
	print(s.format(s = s, c = chr(34)))

if __name__ == '__main__':
	# comment
	s = {c}{c}{c}{s}{c}{c}{c}
	colleen(s)"""
	colleen(s)
