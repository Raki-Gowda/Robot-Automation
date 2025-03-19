#Print string in new line using one print statement
# print("Hello world \n Hello world  \n  hello world")
import random

#Concatenating string
# print("Raki" + " gowda")

#input
# a = input("Whats your name: ")
# print(a)

#The input works first and then print s the entire statements
# print("Hello" +" " + input("Enter your name: ") + "!")

#input - len of inputed string
# a = input("Whats your name: ")
# print(len(a))
#or
# print(len(input("Whats your name: ")))
#or
# Username = input("Whats your name: ")
# length = len(Username)
# print(length)

#Day 2
#subscripting
# print("Hello"[4])

#reverse numbering
# print("Hello"[-1])

#large n0.'s - instead of commas ,we can use underscore("_") - 23_345_00

#DATTYPE CHECK
# print(type("hello"))
# print(type(123))
# print(type(12.3))
# print(type(False))

#Type conversion
# print(int("12"))

#Number manipulation
# print(5//3) -> 1 ,"//" just removes the decimal values
# print(2**3) -> Means 2 to the powr of 3

#PEMDAS

# Day 3
# print(10%3) Modulo operater gives reminder as answer
#bmi
# weight = 85
# height = 1.85
#
# bmi = weight / (height ** 2)
#
# if bmi<18.5:
#     print("underweight")
# elif bmi>18.5 and bmi<25:
#     print("normal weight")
# elif bmi >= 25:
#     print("overweight")
# else:
#     print("Enter correct height and weight")

# Pizza delivery practice
# print("Welcome to Python pizza Deliveries!")
# size = input("What size pizza dou want? S, M or L: ")
# pepperoni = input("Do u want pepperoni on your pizza? Y or N: ")
# extra_cheese = input("Dou want extra cheese? Y or N: ")
# Total_bill = 0
#
# if size == "S":
#     Total_bill = 15
#     if pepperoni == "Y":
#         Total_bill += 2
# elif size == "M":
#     Total_bill = 20
#     if pepperoni == "Y":
#         Total_bill += 3
# elif size == "L":
#     Total_bill = 25
#     if pepperoni == "Y":
#         Total_bill += 3
# else:
#     print("Select correct option")
#
# if extra_cheese == "Y":
#     Total_bill +=1
#
# print(f"Your final bill is: ${Total_bill}")

# Day 4
# Random no's in range'
# ri = random.randint(1,10)
# print(ri)
# Randome no's in decimal
# 0.0 to 1.0
# rd = random.random()
# print(rd)
# Random decimal values with more than 1
# print(rd * 10)

# Random uniform for decimal value in range
# rf = random.uniform(1,10)
# print(rf)

# heads or tails
# HT = random.randint(0,1)
# if HT==0:
#     print("Tails")
# elif HT == 1:
#     print("Heads")

# dice = ["Heads","Tails"]
# print(random.choice(dice))

# Lists
# states = ["adb","acda","asc","vgf","aaa","eee","frv","asx"]
# states[1] = "bca"
# states.append("aac")
# states.extend(["aaa","bbb"])
# print(states)

#Who pays bill
friends = ["Rakesh","Shoba","Pavan","Singh","Manju","Eraser"]
# print(random.choice(friends))

# indx = random.randint(0,len(friends)-1)
# print(friends[indx])