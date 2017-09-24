# cook your dish here
#merge two strings together at a denoted spot

def insertString(string1, string2,i):
    return string1[:i - 1] + string2 + string1[i + 1:]


def main():
    string1 = "its dat Oh shot whaddup **"
    string2 = "boi!"
    prevChar = ""
    i = 0;
    for characters in string1:
        if(prevChar == "*" and characters == "*"):
            string1 = insertString(string1, string2, i)
        prevChar = characters
        i = i + 1
    print(string1)
    
if __name__ == '__main__':
    main()
