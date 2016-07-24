//
//  main.swift
//  Lesson 04 - Learning Swift
//
//  Created by Elad Lavi on 24/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation


/*
let canvas = Canvas();
canvas.drawRectangle(5, y: 2, width: 5, height: 7);
canvas.drawRectangle(7, y: 5, width: 5, height: 7);
canvas.paint();
*/
/*
var p1 = Person();
Person.counter = 15;
p1.name = "Adam";
print(p1.name);
p1.birthYear = 1950;
p1.pet.bark();
print(p1.description());
Person.printCounter();
p1.set(3, newValue: "hi");
print(p1.get(2));

p1[19] = "hi";
print(p1[2]);
*/
let linkedList = LinkedList();
linkedList.add("hello");
linkedList.add("how");
linkedList.add("are");
linkedList.add("you");
linkedList[1] = "How";
print(linkedList.size);
print(linkedList[2]);
linkedList.removeAt(2);
print("all items:");
linkedList.runOnAll { (value: String) in
    print(value);
}

print("isEqual \(linkedList.isEqual(linkedList))");


let s3: NSString = "Elad";
let s4: NSString = "Elad";


let s1 = "elad";
let s2 = "Elad";
if(s3 == s4){
    print("s3==s4");
}else{
    print("s3!=s4");
}

print("again all items:");
linkedList.resetNext();
while(true){
    if let theValue = linkedList.next() {
        print(theValue);
    }else{
        break;
    }
}
linkedList.resetNext();
var s:String?;
/*
while((s = linkedList.next()) != nil){
    
}
 */
while let theValue = linkedList.next() {
    print(theValue);
}

var e1:Person = Employee();
print(e1.description());

