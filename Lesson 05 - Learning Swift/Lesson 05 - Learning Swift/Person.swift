//
//  Person.swift
//  Lesson 05 - Learning Swift
//
//  Created by Elad Lavi on 27/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation
class Person{
    var name: String!;
    var age: Int;
    private var _lastName: String;
    
    /*
    convenience init(){
        self.init(name: "John", age: 0, lastName: "Smith");
    }
    */
    
    
    init(name: String, age: Int, lastName: String){
        self.name = name;
        self.age = age;
        _lastName = lastName;
    }
    
    convenience init(name: String, age: Int){
        self.init(name: name, age: age, lastName: "Smith");
        //self.name = name;
        //self.age = age;
        //_lastName = theLastName;
    }
    
    func description() -> String{
        return "I'm \(self.name) and I'm \(self.age) years old.";
    }
    
    func doPersonThings(){
        print("doing person things");
    }
    
    
    var lastName:String {
        get{
            return _lastName;
        }
        set{
            _lastName = newValue;
        }
    }
    
    
    deinit{
        print("in deinit");
    }
}













