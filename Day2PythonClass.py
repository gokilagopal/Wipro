#myList =["Gokila","Gopal","Gowtham",88,30.29]
#print(myList)
#print(type(myList))
#print(myList[0])
#print(myList[1])
#print(myList[2])
#print(myList[3])
#print(myList[4])
#print(myList[::-1])
#print(myList[-1])
#print(myList[0:3])
#print(myList[:4])
#print(myList[1:])
#print(myList[:])

#myList[3]="Sarojini" #to change the value using index
#print(myList) 
#print("\n")
#myList.append("Jagadesh") #append function to add value in the list 
#myList.append("Laksh")
#print(myList)
#print("\n")

#myList.insert(3,"Gobika") #to insert a value in specified place using index number without deleting the existing value
#print(myList)

#myList.remove("Gobika") #to remove the value present in list 
#myList.remove("Gowtham")
#print(myList)

#newlist= myList.copy()
#print(myList)

#mylist=[["gokila","gopal"],[30.11],[2004,"yyyy"]]
#print("example of multidimensional LIst:")
#print(mylist)
#print(mylist[rows][cols])
#print(mylist[0][0])
#print(mylist[0][1])
#print(mylist[1][0])
#print(mylist[2][0])
#print(mylist[2][1])

#list1=["Gokila","Gopal"]
#print(list1*3) # to print the list 3times
#list2=["30.11",20,30]
#print(list1+list2) #it is used to print the 2list together

#del list2[2] ##to delete the value using index 
#print(list2)

#list2.clear()#clear is used to delete the value inside the list and remains the list same 
#print(list2)

#name="Gokila" #here it is as a string
#print(name)
#myName=list(name) #using list it is created asa list 
#print(myName)

#myName.reverse()
#sorting example
#mylist=[44,66,33,55,22,11,1,0]
#mylist.sort(reverse=True)
#print(mylist)
#default sorting order for number is ascending order
#we want descending order we shd give reverse is true
#default sorting order for string is alphabeticalorder
#we should know that list should contain  homogenious
#data otherwise we will get typeerror
#python2 first short number then string follow


#mylist=[44,66,33,55,22,11,1,0]
#newlist=mylist # it contains the same memory address ,usually used to copy the one list to another list
#if we try to change in any list ,that change will affect both the list bcoz
#the both list have the same memory address 
#print(id(mylist))
#print(id(newlist))

#----------------------------------------------------------------------------
#-------------------------------------------------------------------------
#to check that entered digit is pos,neg,or zero
#num= int(input("Enter a number to check whether it is pos,neg,or zero "))
#if num>0:
#   print("The entered number is POSITIVE:",num)
#if num<0:
#   print("The entered number is NEGATIVE:",num)
#if num==0:
#   print("The entered number is ZERO.")   

#--------------------------------------------------------------------------
#________________-----------------_-----------------------------------------
#accept a 4number for the user and find the max

#a=int(input("Enter a 1st number :"))
#b=int(input("enter the 2nd number:"))
#c=int(input("Enter a 3rd number :"))
#d=int(input("enter the 4th number:"))


#simple if
#if(a>b and a>c and a>d):
 #   print("a value is  greater")
#if(b>a and b>c and b>d):
 #   print("b value is  greater")
#if(c>a and c>b and c>d):
#    print("c value is  greater")
#if(d>a and d>b and d>c):
 #   print("d value is  greater")

#if else condition
'''username=input("enter the username:")
password=input("enter the password:")
if username==password:
    print("login successfully")
else:
    print("login Fails")    '''


'''age=int(input("enter you age"))
if age>=18:
    print("youre eligible for voting")
else:
    print("You are not eligible for voting ")   ''' 

'''#elif condition
brand= input("enter you cold drink ")
if brand=='pepsi' or brand=="PEPSI":
    print("swag")
elif brand== "dew" or brand=="DEW":
    print("Hmmm")
elif brand== "thumsup" or brand=="THUMPSUP":
     print("TASTE")
else:
    print("Go with your brand ")     '''

'''value= ord(input("enter any one character,alphabets,digits,and special symbols"))
#ord function is used to convert in ascii code 
if value>=65 and value<=90:
    print("Enter char is in upper case")
elif value>= 97 and value<=122:
      print("Enter char is in lowwer case") 
elif value>=48 and value<=57:
     print("entered value is digit")      
else:
     print("You have entered a special character:")
'''

'''
n1= int(input("enter the value for N1 "))
n2= int(input("enter the value for N2 "))
n3= int(input("enter the value for N3"))

if n1>n2:
    if n1>n3:
        print("n1 is greater",n1)
    else:
        print("n3 is greater",n3)    

else:
    if n2>n3:
        print("n2 is greater:",n2)
    else:
        print("n3 is greater :",n3)    '''



#---------------------------------------------------------------------
#one Mark questions 
#-----------------------
#a=[1,2,3,4,5,6,7,8,9]
#a[::2]=10,20,30,0,50,60
#print(a)
#Ans:attempt to assign sequence of size 6 to extended slice of size 5

#a=[1,2,3,4,5]
#print(a[3:0:-1]) #n=0, n-1=1 Ans: [4,3,2]
'''
arr=[1,2,3,4,5,6]
for i in range(1,6):
    arr[i-1]=arr[i]
for i in range(0,6):
    print(arr[i],end=" ") '''



#__________________________________________________________________________

###LOOPS -------------------
#__________

#FOR (initialization;conditions; inc/dec)

'''for i in range(5): #by default the value takes from 0 
    print(i) # print from 0 to 4 '''

'''for i in range(1,5): #by default the value takes from 0 ,so when we give 1 
    #it will start performing from 1 to 4
    print(i) # print from 0 to 4 '''

'''
for i in range(1,5,2): #by default the value takes from 0 ,so when we give 1 
    #it will start performing from 1 to 4 and that 2represent after 1 then increment 2
    print(i) # print from 0 to 4 '''

'''for i in range(1,11):
    print(i*2)'''

'''
for i in range(1,11):
       print(i*2, i*3,i*4,i*5 ,i*6, i*7,i*8,i*9,i*10)
print("---------------------------------------")       
for i in range(1,11):   
       print(i*11,i*12, i*13,i*14,i*15 ,i*16, i*17,i*18,i*19,i*20)'''

'''mylist=["Gokila",30,40,50,3.29]
for i in mylist:
     #in python for loop cant be empty ,if you need it to be empty use "pass" keyword that represent that for loop needs to empty
    print(i) # this for loop works based on index if there is no match in index it takes that as false and come out of that loop '''

'''
mylist=[1,2,3,4,5,6,7,8,9,10]
even=0
odd=0
for i in mylist: 
    if i%2==0:
        even+=1
    else:
        odd +=1
print("Even=",even)
print("odd=",odd)    '''


'''
mylist=[1,2,3,4,5,6,7,8,9,10]
#linear search 
target=7
for i in range(len(mylist)):
    if mylist[i]==7:
        print("the element has found at the index number :",i)'''
''' 
 arr=[1,2,3,4,5,6]
for i in range(1,6):
    arr[i-1]=arr[i]
for i in range(0,6):
    print(arr[i],end=" ")  '''  
'''
fruitList1=["apple","berry","cherry","papaya"]
fruitList2=fruitList1
fruitlist3=fruitList1[:]
fruitList2[0]="Guava"
fruitlist3[1]="kiwi"

sum=0
for ls in (fruitList1,fruitList2,fruitlist3):
    if ls[0]=="Guava":
       sum +=1
    if ls[1]=="kiwi":
       sum +=20
       print(sum) '''

##Break Continue Statements:
'''mycart=[10,20,400,500,600]
for i in mycart:
    if i>400:
        print("this is not in my budget")
        break
    print(i) '''

'''mycart=[10,20,400,500,600,100,200]
for i in mycart:
    if i>400:
        print("this is not in my budget")
        continue
    print(i) '''

'''for i in range(1,5):
    if i==3:
        break
    print(i) '''

'''for i in range(1,5):
    if i==3:
        continue
    print(i) '''
'''
for i in range(1,6):
    if i==3:
        continue
    print(i)
    if i==3:
        continue
     print(6-i) '''
# this or that this both the codes output will be same 
#zip() function we can take multiple range function

'''for i,j in zip(range(1,6),range(5,0,-1)):
    if i==3 and j==3 :
        continue
    print(i,"   ",j) '''

'''count=0
for i in range(9):
    if i%2==0:
        print(i)
    else:
        print(i)
        count +=1
print("count=",count)     '''

'''
list=[1,2,3,4,5,6,7,8,9,10]
sum=0
for x in list:
    sum=sum+x
print("sum=",sum)    

-----------------------------------------------

rollno=[3,5,7,1,11,4,5,2]
for x in rollno:
    if x==2 or x==4 or x==6 or x==8 or x==10 :
        print("even no is found",x)
        break '''
'''
for i in "Gokila":
    print(i) '''

'''name="GokilaGopal"
for i in name:
    print(i) '''

'''
#To remove duplicate character
name="GokilaGopal"
newname="  "
for i in name:
    if i not in newname: 
        newname= newname+i
print(name)
print(newname)
# the newname will be empty at frst and then when if condition checks 
#if G comes in .check is the g letter already present in the newname
# if not newname stores g..and check with next character that is o 
# checks with the o ,o is already present in the newname or not ..if
# not it will also add to the newname ..then keeps on checking 
# if the element is already present in the newname it skips and checks 
# with next element   
'''
'''
#Finding max and min
arr=[5,3,9,2,8]
max=0
min=arr[0]
for i in range(len(arr)):
    if arr[i]>max:
        max=arr[i]
    if arr[i]<min:
        min=arr[i]
print(max)         
print(min) '''       

'''
#second largest number 
arr=[5,3,9,2,8]
seclar=0
for i in range(len(arr)):
    if arr[i]>max:
        max=arr[i]
for i in range(len(arr)):
    if max< and arr[i]>seclar:
        seclar= arr[i]
print("second Largest",seclar)     //error'''        

'''mytuple=("Gokila","Gopal","sarojini",30,11,6)
print(mytuple)
print(type(mytuple))
mytuple[2]="4"
print(mytuple) '''

'''
init_tuple =()
print(init_tuple.__len__())

init_list =[]
print(init_list.__len__()) '''

'''
init_tuple_a = 'a','b' #paranthesis are optional in tuple ,without paranthesis also we can run
init_tuple_b = ('a','b')
print(init_tuple_a== init_tuple_b)'''

'''init_tuple_a='1','2'
init_tuple_b=('3','4')
print(init_tuple_a+init_tuple_b) '''

'''
l=[1,2,3]
init_tuple=('python')*(l.__len__()-l[::-1][0])
print(init_tuple)'''

'''
init_tuple = ('Python') * 3
print(type(init_tuple)) '''

init_tuple =((1,2),)*7
print(len(init_tuple[3:8])) # this one will 1(),2) will be multiple by 7times not by 7
#then by using len function identifying the lenght 
#then 3:8 the count of 3 to 8 is 5 but 8 is exclusive , so the count is 4

 
arr=[1,2,3,4]
multi=1
newarray=[]
for i in range(len(arr)):
    multi=1
    for j in range(len(arr)):
        if i==j:
            continue
        else:
            multi=multi*arr[j]
    newarray.append(multi)
print(newarray)
    













































































