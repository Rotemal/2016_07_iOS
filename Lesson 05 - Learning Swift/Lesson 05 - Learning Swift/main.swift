//
//  main.swift
//  Lesson 05 - Learning Swift
//
//  Created by Elad Lavi on 27/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation



/*
class Employee: Person{
    var employeeNumber = 1234567;
    var hourlyRate = 33.0;
    
    
    init(){
        super.init(name: "John", age: 20, lastName: "Smith");
    }
    
    init(person: Person){
        super.init(name: person.name, age: person.age, lastName: person.lastName);
        
    }

    
    func doEmployeeThings(){
        print("doing employee things");
    }
    
    override func description() -> String {
        return super.description() + " My hourly rate is \(self.hourlyRate)";
    }
    
}

var p1 = Person(name: "Elad", age: 70);
if(p1.name != nil){
    print(p1.name);
}else{
    print("nil");
}
p1.name = "Matt";
p1.lastName = "Campbell";
p1.age = 40;


var e1:Person? = Employee();
print(e1!.description());
//e1 = nil;
if e1 is Employee{
    var e2 = e1 as! Employee;
}
var e3 = Employee(person: p1);

let f1 = 9.99;
let i1 = Int(f1);
let d1 = Double(f1);
let b1 = Bool(f1);
let s1 = String(f1);
print(s1);



//Strong reference cycle:
/*
class A{
    var b: B?;
    deinit{
        print("in deinit of A");
    }
}
class B {
    weak var a: A?;
    deinit{
        print("in deinit of B");
    }
}

var a:A? = A();
var b:B? = B();
a!.b = b;
b!.a = a;
a = nil;
b = nil;
*/


public class Shape{
    var pricePerUnit: Double = 0;
    func area()->Double{
        return 0.0;
    }
    func getTotalPrice()->Double{
        return area()*pricePerUnit;
    }
}
public class Square: Shape {
    var side: Double = 0;
    override func area() -> Double {
        return side * side;
    }
}

let s = Square();
s.pricePerUnit = 10;
s.side = 10;
print(s.getTotalPrice());


extension Person{
    func printYourSelf(){
        print(self.description());
    }
}
p1.printYourSelf();
let myString = "hello";
let myString2 = "hi";
extension String{
    func printIt(){
        print(self);
    }
    
}
myString.printIt();
myString2.printIt();
*/

/*
class MySuperClass {
    
}

protocol MyProtocol{
    func someFunc();
}

class MyClass: MySuperClass, MyProtocol {
    
    func someFunc() {
        print("some func");
    }
    
}
let p = MyClass();


class MyOtherClass {
    var delegate : MyProtocol?;
    
    func SomethingHappened(){
        print("something happened");
        if let theDelegate = delegate{
            theDelegate.someFunc();
        }
    }
    
}

let myOtherClass = MyOtherClass();
myOtherClass.delegate = p;
*/
let p = Project();
p.name = "Cook Dinner";

let taskNames = ["Choose Menu", "Buy Groceries", "Prepare Ingredients", "Cook Food"];


for name in taskNames{
    let t = Task();
    t.name = name;
    p.listOfTasks.append(t);
}



