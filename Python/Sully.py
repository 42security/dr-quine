import os

def sully(file, code, i):
    file.write(code.format(s = code, c = chr(34), i = i))
    cmd = "Sully_" + str(i) + ".py"
    file.close()
    os.system("python -O " + cmd)

def main():
    i = 5
    if not __debug__:
        i -=1
    if i < 0:
        return
    file = open("Sully_"+str(i)+".py", "w")

    code = """import os

def sully(file, code, i):
    file.write(code.format(s = code, c = chr(34), i = i))
    cmd = "Sully_" + str(i) + ".py"
    file.close()
    os.system("python -O " + cmd)

def main():
    i = {i}
    if not __debug__:
        i -=1
    if i < 0:
        return
    file = open("Sully_"+str(i)+".py", "w")

    code = {c}{c}{c}{s}{c}{c}{c}
    sully(file, code, i)

if __name__ == '__main__':
    main()"""
    sully(file, code, i)

if __name__ == '__main__':
    main()