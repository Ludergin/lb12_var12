# Выполнил: студент группы ИСП-250 Челибийский М.
# Лабораторная №4, вариант №12
#------------------------------------------------------------
import math

# процедура позволяет работать с вещественными числами
def frange (start, stop, step):
    i=start
    while i < stop:
        yield i
        i += step

# 1. создаем значения аргумента х и функций у1 и у2 по формулам
x=[i for i in frange(-5.0,5.5,0.5)]
y1 = [2*math.log(1+(i**2),math.exp(1)) for i in x]
y2 = [(1+(math.cos(i)**2))**(3/5) for i in x]

# 2. создание файла data.txt для записи полученных данных в столбцы
filename = 'D:\proect\lb12_val12\lb12_var12\lb17\d1\data.txt'
with open(filename, 'w') as outfile:
    outfile.write('# значения х, у1 и у2\n')
    for xi, yli, y2i in zip(x, y1, y2):
        outfile.write('%10.5f %10.5f %10.5f\n' % (xi, yli, y2i))
outfile.close()

# 3. находим сумму функций s=y1+y2
result= map(lambda i1, i2: i1+i2, y1, y2)
y=sorted(list(result))

# 4. Добавление результата y и сравнение y1 и y2 в файл data.txt 
with open(filename, 'a') as outfile:
    outfile.write('# Результат задания ѕ\n') 
    for yi in zip(y): 
        outfile.write('%10.5f\n' % (yi))
    outfile.write('# Результат задания сравнение y1 и y2\n') 
    if min(y1)>min(y2):
        outfile.write('(y1 больше y2)')
    elif min(y1)<min(y2):
        outfile.write('(y2 больше y1)')
    else: outfile.write('(y1 одинаковы y2)')
outfile.close()