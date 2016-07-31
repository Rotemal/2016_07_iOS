//
//  main.swift
//  Lesson 06 - More about functions
//
//  Created by Elad Lavi on 31/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

func multiply(x: Int, _ by: Int)->Int{
    return x * by;
}
func subtract(theNumber x: Int, from y: Int)->Int{
    return y - x;
}
func divide(x: Int, by: Int)->Int{
    return x/by;
}


let result = subtract(theNumber: 4, from: 10);

let r = multiply(4, 3);



func sum(nums: Double...)->Double{
    var s = 0.0;
    for num in nums{
        s += num;
    }
    return s;
}

var res = sum(4, 5);
res = sum(34, 12, 5.6, 4.3);



















