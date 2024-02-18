filename1 = 'D:\proect\lb12_val12\lb12_var12\lb18\covid.txt'
filename2 = 'D:\proect\lb12_val12\lb12_var12\lb18\covid2.txt'
f1=open(filename1, 'r+',encoding='utf-8')
f2=open(filename2, 'w+',encoding='utf-8')
d=f1.readlines()
min=100
max=0

for i in range(0,len(d)):
    l=d[i]
    f2.write(l[:len(l)-1])
    c=0
    for k in range(0,len(l)):
        if l[k]==" " or l[k]=="\n":
            c+=1
            match c:
                case 1:
                    b=k+1
                case 2:
                    zaroj=float(l[b:k])
                case 3:
                    smert=float(l[k+1:])
                    letal=(smert/zaroj)*100
                case 4:
                    if min>letal:
                        min=letal
                    if max<letal:
                        max=letal
                    letal=str(f"{letal:.{2}f}%")
                    f2.write(' ')
                    f2.write(letal)
                    f2.write('\n')

print(f"минимальная летальность {min:.{2}f}%")
print(f"максимальная летальность {max:.{2}f}%")

f1.close()
f2.close()
