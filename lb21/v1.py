def func(ch):
    global sum
    if len(ch)!=1:
        a=ch[0:1]
        a=int(a)
        b = ch[1:]
    else:
        a=int(ch)
        b = ch
    sum+=a
    if len(b)!=1:
        func(b)
    else:
        return sum

sum=0
a=input('Введите последовательность чисел, завершающаяся числом 0: ')
func(a)
print(sum)