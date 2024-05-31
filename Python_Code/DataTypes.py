"""
List-data type
1.list is consecutive collection of words
2.Represents group of value as single entity, order is very important
3.It allowes duplicate vlaue as well
4.It represents by square bracket []
5.Values are seperated by commas

"""

a=[]
b=[1,2,3, 'Rahul', True]
print(type(b))


emp =["Madi", 102, "India"]
Dep1 = ["IT", 10]
Dep2  =["Elex", 11]

print(f"Name is {emp[0]}, Department is {emp[1]}, Country is {emp[2]}")

e =["w","a","d","k"]
print(e)
e.sort(reverse=True)
print(e)

l3=[1,20,35,3]
print(max(l3))

print(sorted(l3)[-2])

for x in range(10):

    if x==8:
        break
    print(x)

else:
    print("loop")

fruit = ["apple","banana","lemon"]
colur = ["green","yellow", "orange"]

for i in fruit:
    for j in colur:
        print(i,j)
