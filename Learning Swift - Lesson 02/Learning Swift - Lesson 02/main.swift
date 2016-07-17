//
//  main.swift
//  Learning Swift - Lesson 02
//
//  Created by Elad Lavi on 17/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

typealias Note = String;
var x: Note;

if(5<7){
    let y = 3;
}
//print(y);//will not work because y declared inside the if braces
enum Weekday{
    case Sunday
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
}

var today: Weekday;
today = .Sunday;
if(today == .Sunday){
    print("have a nice week");
}





