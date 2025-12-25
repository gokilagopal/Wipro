##SET DATATYPE-----------
'''
myset={"GOKILA","Gokila",1,2,3,4,5,6,"ijaaz"} #in set data type bracket is mandatory ,
#and the output is randomly not in the way you entered
#cant execute in indexed wise 
print(myset)

#myset[0]= "Gopal" #'set' object does not support item assignment

myset.update(range(30,11))
print(myset)

myset.remove(3)
myset.remove("GOKILA") #{1, 2, 4, 5, 6, 'Gokila', 'ijaaz'}
print(myset) #{1, 2, 4, 5, 6, 'Gokila', 'ijaaz'} 

myset={10,20,30,40}
yourset={"Gokila","Gopal"}
newset= myset.union(yourset)
print(newset) 

myset={10,20,30,40}
yourset={"Gokila","Gopal"}
newset= myset.union(yourset)
print(newset) 

myset={10,20,30,40}
yourset={"10,50,60,30"}
newset= myset.intersection(yourset)
print(newset) 

myset={10,20,30,40}
yourset={"10,50,60,30"}
newset= myset.difference(yourset)
print(newset)'''
#______________________________________________________
mydict ={
     101:"GOKILA",
     102: "Gokila",
     103:"monika",
     104:"Appu",
      105:"GokilaGopal"
}
#print(mydict)
'''
for x in mydict.values(): #to print the values present in the dictonary
    print(x)
for x in mydict:
    print(x) #to print the values keys 
print("\n")
for x ,y in mydict.items():
    print(x,y) # to print both the values and keys 

mydict["Department"]= "management" # to add or insert into dictionary
print(mydict) 

myDict={
    "name":"gokila",
    "professional":"developer",
    "empid":"20002906"
}
newdict= myDict.copy()
print(newdict) 
#----------------------------------
a={(1,2):1,(2,3):2,(4,5):3}
print(a) #continuatiion is there
#-------------------------------------
a={'a':1,'b':2,'c':3} 
#continuatiion is there for above 
#----------------------------------
arr={}
arr[1]=1
arr['1']=2
arr[1] +=1
sum=0
for k in arr:
    sum+= arr[k]
print(sum)    


arr={}
arr[1]=1
arr['1']=2
arr[1.0] +=4 #in dictionary 1.0 is a float value still it will considered as a integer
sum=0
for k in arr:
    sum+= arr[k]
print(sum)  

mydict={}
mydict[(1,2,3)]=8
mydict[(4,2,1)]=10
mydict[(1,2)]=12

sum=0
for k in mydict: # by default it takes the key
    sum += mydict[k]
print (sum) 
print(mydict) 

box ={}
jars={}
crates={}
box['biscuits']=1
box['cakes']=3
jars['jam']=4
crates['box']=box
crates['jars'] = jars
print(len(crates[box]))

dict={'c':97,'a':96,'b':98}
for _ in sorted(dict):
    print(dict[_]) #it sort according to aplhabets 

rec= {"name":"python","age":"20"}
r= rec.copy()
print(id(r)==id(rec))'''

rec={"name":"python","age":"20","addr":"nj"}
id1=id(rec)
rec={"name":"python","age":"20","addr":"nj"}
id2=id(rec)

print(id1==id2)
print(id(id1))
print(id(id2))

























































































































































































































































