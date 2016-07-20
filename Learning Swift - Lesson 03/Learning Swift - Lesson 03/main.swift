//
//  main.swift
//  Learning Swift - Lesson 03
//
//  Created by Elad Lavi on 20/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

var d1:[String: String];
//d1 = [String: String]();
d1 = ["firstName" : "Elad", "lastName" : "Lavi"];
//d1["firstName"] = "Michal";
print(d1.keys.count);
if let theValue = d1["firstName"]{
    print(theValue);
}else{
    print("no such key in the dictionary");
}

for (key,value) in d1{
    print("key=\(key) value=\(value)");
}

for key in d1.keys{
    print(key);
}

let x = 3;
if(x == 1){
    
}else if(x == 2){
    
}else if(x == 3){
    
}else{
    
}

switch(x){
case 1:
    print("x is 1");
    break;
case 2:
    print("x is 2");
    break;
case 3:
    print("x is 3");
    break;
case 4:
    print("x is 4");
    break;
default:
    print("x is something else");
}

func myFunc(x: Int)->Int{
    if(x < 2){
        return 100;
    }
    return 300;
}

/*
var a: AnyObject;
a = 5;
a = "hello";
*/

func byRefFunc(inout x: Int){
    x++;
}

var y = 5;
byRefFunc(&y);
print(y);


func compareIntegers(x: AnyObject, y: AnyObject)->Bool{
    let a = x as! Int;//casting
    let b = y as! Int;
    
    return a > b;
}



func sortArray(inout arr:[AnyObject], compare:(AnyObject, AnyObject)->Bool){
    var isSorted = false;
    var upTo = arr.count - 1;
    while(!isSorted){
        isSorted = true;
        for var i=0; i<upTo; i++ {
            
            
            if(compare(arr[i], arr[i+1])){
                let temp = arr[i];
                arr[i] = arr[i+1];
                arr[i+1] = temp;
                isSorted = false;
            }
        }
        upTo--;
    }
    
}


var numbers:[AnyObject] = [345,123,55,234,886,12];
//sortArray(&numbers, compare: compareIntegers);
sortArray(&numbers, compare: { (x: AnyObject, y: AnyObject) -> Bool in
    let a = x as! Int;//casting
    let b = y as! Int;
    
    return a > b;
});



func myFunc2()->Bool{
    return true;
}

var myVar = {()->Bool in print("inside closure"); return true;};
myVar = myFunc2;
//myVar();

struct Student{
    var firstName = "";
    var lastName = "";
    var classRoom = 0;
    
    func printStudent(){
        print("my name is \(firstName) \(lastName)");
    }
    
    
    mutating func setFirstName(firstName: String){
        self.firstName = firstName;
    }
}

var s1 = Student();
s1.firstName = "John";
var s2 = s1;
s1.firstName = "Adam";
print(s2.firstName);


class Dog {
    var name:String = "";
    
    func setName(name: String){
        self.name = name;
    }
}



class Canvas {
    var canvas:[[Bool]];
    init(){
        canvas = [[Bool]]();
        for _ in 0..<20{
            var row = [Bool]();
            for _ in 0..<40{
                row.append(false);
            }
            canvas.append(row);
        }
    }
    
    func drawRectangle(x: Int, y: Int, width: Int, height: Int){
        
    }
    
    func drawX(size: Int){
        
    }
    
    func drawCircle(a: Int, b: Int, radius: Int){
        
    }
    
    func paint(){
        
    }
    
}
let c = Canvas();



var dog1 = Dog();
dog1.name = "snoopy";
var dog2 = dog1;
if(dog1 === dog2){ //reference comparsion
    print("dog1 and dog2 are equal");
}else{
    print("dog1 and dog2 are NOT equal");
}


