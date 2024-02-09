#Test 1
name = input (" Enter your name: ")
name = name.split()
firstname = name[0]
jumlahkarakter = len(firstname)
print('Total Character of your first name:', jumlahkarakter)


#Test 2
name = input (" Enter your name: ")
split = name [1::2]
junk = split.upper()
print("Your code is:", junk)


#Test 3
oke = input ("Enter thr four digit number:")
angka1 = oke[0]
angka2 = oke[1]
angka3 = (oke[2])
angka4 = (oke[3])
zum = int(angka1)+int(angka2)+int(angka3)+int(angka4)
reverse = angka4 + angka3 + angka2 + angka1
print (zum)
print (reverse)


#Test 4
import math

CA = input("Enter coordinate point A: ")
CB = input("Enter coordinate point B: ")


x1 = int(CA[0])
y1 = int(CA[1])

x2 = int(CB[0])
y2 = int(CB[1])



slope = (y2 - y1)/(x2 - x1)
distance = math.sqrt(((x1 - x2)**2 + ((y1 - y2)**2)))
print('The slope is',"%.1f" % slope)
print('The distance is',"%.3f" % distance)


#Test 5


text1, text2 = input('Enter thr sample string of your choice: ').split(',')
text1, text2 = text1.strip(), text2.strip()

rearrange = f'{text2[:3]}{text1[3:]} {text1[:3]}{text2[3:]}'
print(f'Output: {rearrange}')


#Test 6

t1 = input('Enter the first text ')
t2 = input('Enter the first text ')

mid = len(t1)//2
result = f'{t1[0]}{t2[0]}{t1[mid]}{t2[mid]}{t1[-1]}{t2[-1]}'
print(f'Output: {result}')


#Test 7

txt1 = input('Enter the first text: ')
txt2 = input('Then your second text: ')

mid = len(txt1)//2
theoutput = f'{txt1[:mid]}{txt2}{txt1[mid:]}'
print(f'Expected result: {theoutput}')