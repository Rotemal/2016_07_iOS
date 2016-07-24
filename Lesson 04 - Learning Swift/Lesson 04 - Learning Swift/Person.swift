//
//  Person.swift
//  Lesson 04 - Learning Swift
//
//  Created by Elad Lavi on 24/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

class Person{
    
    static var counter: Int = 0;
    private var _name: String = "John";
    var birthYear: Int = 1977 {//observers
        willSet{
            
        }
        didSet{
            
        }
    }
    lazy var pet: Dog = Dog();
    
    func description()->String{
        return "My name is \(self._name), and I was born on \(self.birthYear)";
    }
    
    /*
    func setName(name: String){
        //check that name has at least 3 characters
        
        _name = name;
        
    }
    
    func getName()->String{
        return _name;
    }
    */
    
    var name:String{
        get{
            return _name;
        }
        set{
            //before change
            _name = newValue;
            //after change
        }
    }
    
    var stam = "";
    
    
    subscript(index: Int) ->String{
        get{
            return stam;
        }
        set{
            stam = newValue;
        }
    }
    
    subscript(index: String) ->String{
        get{
            return stam;
        }
        set{
            stam = newValue;
        }
    }
    
    
    func get(index: Int)->String{
        return stam;
    }
    func set(index: Int, newValue: String){
        stam = newValue;
    }
    
    
    
    static func printCounter(){
        print(Person.counter);
    }
    
    
    
    
}

class Dog{
    
    init(){
        print("in init() of Dog");
    }
    func setOwner(owner: Person){
        print(owner._name);
    }
    
    func bark(){
        print("baff baff..");
    }
}


