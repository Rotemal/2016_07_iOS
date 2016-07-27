//
//  main.swift
//  Lesson 05 - Learning Swift
//
//  Created by Elad Lavi on 27/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation




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








