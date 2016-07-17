//
//  main.swift
//  My First Command Line App
//
//  Created by Elad Lavi on 13/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation;

let i: Int = -25;
let f: Float = 3.14;

print("Hello, World! \(i) \(f)");

var i2:UInt8 = 7;
var i3:Int8 = 7;
let c1: Character = "A";
var b1: Bool;
let b2 = false;
b1 = i2 == 7;
print("the value of b1 is \(b1)");

let rectangle1 = (0, 0, 200, 100);
print(rectangle1.3);
var rectangle2 = (x: 0, y: 0, width: 200, height: 100);
print(rectangle2.width);
let (_, _, c , d) = rectangle1; 
print(d);
var s:String?;
s = nil;
s = "hello";

if i < 19{
    print("i is less than 19");
}else{
    print("i is greater than or equal to 19");
}

//print(s!);

if let theValueOfS = s{
    print(theValueOfS);
    print(theValueOfS);
}else{
    print("s is nil");
}

if s != nil{
    print(s!);
    print(s!);
}else{
    print("s is nil");
}

typealias Short = Int16;
var t: Short = 15;
typealias Note = String;
let myNote: Note = "hello";

func saimon(x: Int, y: Int)->Int{
    print("hello Saimon \(x)");
    return x * 55 + y;
}


var x = saimon(4, y: 5);
print("x=\(myNote)");



let y = x += 1;
print(y);


while x < 300{
    x++;
    print("x=\(x)");
}

for item in 0 ..< 10 {
    print("item = \(item)");
}












