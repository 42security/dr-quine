# comment
def grace(file, code):
    file.write(code.format(s = code, c = chr(34)))

code = """# comment
def grace(file, code):
    file.write(code.format(s = code, c = chr(34)))

code = {c}{c}{c}{s}{c}{c}{c}

def grace2():
    file = open("Grace_kid.py", "w")
    grace(file, code)

if __name__ == '__main__':
    grace2()"""

def grace2():
    file = open("Grace_kid.py", "w")
    grace(file, code)

if __name__ == '__main__':
    grace2()