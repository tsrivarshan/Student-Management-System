struct student
{
    var name: String
    var rollno:Int
    var marks:[Int]=[]
}
class Average
{
     struct Marks
     {
        func calc(a:[Int])
        {
          var t:Int=0
          var A:Int=0
          t=t+(a[0]+a[1]+a[2]+a[3]+a[4])
          A=t/5
          print("TOTAL :\(t)\nAVERAGE :\(A)%")  
        }
     }
}
func avg(details:[student])
{
  let h=Average.Marks()
  let c=details.count
  if(c>0)
  {
  print("ENTER THE NAME TO GET AVERAGE")
  let x=readLine()
  var i=0
  for s in details
   {
      if(s.name==x)
       {
           print("\nNAME :\(s.name)\nROLL NO :\(s.rollno)")
           h.calc(a:s.marks)
       }
      i=i+1
    }
    }
    else
    {
        print("THE STUDENT LIST IS EMPTY !!")
    }
}
func insert()->student
{
var d:[student]=[]
var n:String!
var r:Int!
var m:[Int]=[]
print("ENTER ROLLNO")
r=Int(readLine()!)
print("ENTER NAME")
n=String(readLine()!)
print("\nEnter the marks")
var y:Int!
for i in (1...5)
{
print("Mark:\(i)")
y=Int(readLine()!)
m.append(y)
}
let p:student = student(name:n,rollno:r,marks:m) 
d.append(p)
print("\nTHE DETAILS ENTERED....")
return d[0]
}
func delete(details:[student])->Int
{
  var d:[student]=[]
  d=details
  print("ENTER THE NAME TO DELETE")
  let x=readLine()
  var i=0
  for s in d
   {
      if(s.name==x)
       {
           return i
       }
      i=i+1
    }
  return -1
}
func update(details:[student])->(Int,[Int])
{
print("ENTER THE NAME OF STUDENT TO UPDATE")
let u=readLine()
var c=0
var y:Int!
var b=0
var a:[Int]=[]
for s in details
{
    if(s.name==u)
    {
      b=c
      for i in (1...5)
        {
          print("Mark:\(i)")
          y=Int(readLine()!)
          a.append(y) 
        }
       return(b,a)
    }
    c=c+1
}
return (-1,[])
}
func display(details:[student])
{
var n=1
let c=details.count
if (c>0)
{
print("************************************************************")
    for i in 0..<c
    {
        print("STUDENT :\(n)\n")
        print("NAME :\(details[i].name)\nROLL NO:\(details[i].rollno)\nMARK LIST:\(details[i].marks)")
        print("************************************************************")
        n=n+1
    }
}
else
{
    print("THE STUDENT LIST IS EMPTY")
}
}
print("*****   STUDENTS MARK MANAGEMENT SYSTEM   *****")
var arr:[student]=[]
var z:Int!
z=1
while(z == 1)
{
print("1.INSERT THE DETAILS\n2.DELETE THE DETAILS\n3.UPDATE THE DETAILS\n4.CALCULATE THE AVERAGE\n5.DISPLAY THE DETAILS")
print("\nEnter your choice")
var s:Int!
s=Int(readLine()!)
switch(s)
{
case 1:
arr.append(insert())
case 2:
let p=delete(details:arr)
if(p == -1)
{
    print("THE NAME NOT FOUND!!")
}
else
{
arr.remove(at:p)
print("\nTHE DETAILS DELETED....")
}
case 3:
let t=update(details:arr)
if(t.0 == -1)
{
    print("THE NAME NOT FOUND!!")
}
else
{
print(t.1)
arr[t.0].marks=t.1
print("\nTHE DETAILS UPDATED....")
}
case 4:
avg(details:arr)
case 5:
display(details:arr)
default:
print("SELECT THE CORRECT CHOICE")
}
print("Press 1 to continue")
z=Int(readLine()!)
}

