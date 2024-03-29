def printRoman(number):
    num = [1, 4, 5, 9, 10, 40, 50, 90,]
    sym = ["I", "IV", "V", "IX", "X", "XL","L", "XC"]
    i = 7
     
    while number:
        div = number // num[i]
        number %= num[i]
        while div:
            print(sym[i], end = "")
            div -= 1
        i -= 1

number=int(input())
print("Roman value is:", end = " ")
printRoman(number)