from random import randint
n=int(input('Введите длину последовательности чисел '))
j=[0]*n
j2=[]

print('Исходный массив')
for i in range(n):
    j[i]=int(randint(0,10))
    print(j[i], end=' ')
print()

a=int(input('Введите первое значения которое будет выброшено из ряда '))
b=int(input('Введите второе значения которое будет выброшено из ряда '))

for i in j:
    if i!=a and i!=b:
        j2.append(i)

print('получившийся массив')
for i in j2:
    print(i, end=' ')
print()

j2=sorted(j2)
print('переставленый массив')
for i in j2:
    print(i, end=' ')
print()