from random import randint
#функция для определения среднего значения
def chet():
    global vsego
    vsego+=a[i][j]
    if i ==n-1:
        srd=vsego/n
        print(f'среднее значение {j+1} столбца = {srd}')
        vsego=0

#задние количества строк
n=int(input('Введиет количество строк матрицы '))

#создание матрицы
a =[[0 for j in range(6)] for i in  range(n)]

#описание элементов матрицы
print('Основной массив')
for i in range(n):
    for j in range(6):
        a[i][j]=int(randint(0,10))
        print(a[i][j], end=' ')
    print()
    
#счет среднего значения каждой столбца
vsego=0
for j in range(6):
    for i in range(n):
        match j:
            case 0:
                chet()
            case 1:
                chet()
            case 2:
                chet()
            case 3:
                chet()
            case 4:
                chet()
            case 5:
                chet()
            case 6:
                chet()
