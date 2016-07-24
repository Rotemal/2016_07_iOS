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

var p1 = Person();
Person.counter = 15;
p1.name = "Adam";
print(p1.name);
p1.birthYear = 1950;
p1.pet.bark();
print(p1.description());
Person.printCounter();
p1[3] = "hi";
print(p1[2]);



