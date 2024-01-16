from random import randint
a=[0]*10

print('Исходный массив')
for i in range(10):
    a[i]=randint(0,10)
    print(a[i], end=' ')
print()

print('получившийся массив')
for i in range(10):
    if a[i]%2!=0:
        a[i]=0
    print(a[i], end=' ')
