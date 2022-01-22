# comment
def colleen(s):
	print(s.format(s = s, c = chr(34)))

def main():
	# comment
	s = """# comment
def colleen(s):
	print(s.format(s = s, c = chr(34)))

def main():
	# comment
	s = {c}{c}{c}{s}{c}{c}{c}
	colleen(s)

if __name__ == '__main__':
	main()"""
	colleen(s)

if __name__ == '__main__':
	main()
