def is_pal(string):
    string = string.replace(' ', '')
    if len(string) < 2:
        return True
    if string[0] != string[-1]:
        return False
    return is_pal(string[1:-1])

a=input('Введите текст: ')
print(is_pal(a))