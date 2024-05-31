for i in range(10):
    if i==7:
        print("Break at the point", i)
        break
    print("printing the value as",i)
print("Out side the loop")

for i in range(10):
    if i%2 == 0:
        print("Even Number is ", i)
        continue
    print("Odd Number is ", i)

for i in range(10):
    if i==7:
        print(i)
        break
    elif i==5:
        continue
    print(i)

cart = [10,20,20,40,50,550,80]

for item in cart:
    if item>100:
        print("Item not allowed")
        break
    print(item)

else:
    print("All item succesfully processed")

for i in range(5):
    pass