//
//  main.swift
//  Learning Functions - Step 1
//
//  Created by Elad Lavi on 17/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

func distance(x: Int, y: Int)->Int{
    var small = x;
    var large = y;
    if(x > y){
        small = y;
        large = x;
    }
    var result = 0;
    while(small + result < large){
        result++;
    }
    return result;
}

func product(x: Int, y: Int)->Int{
    var small = x;
    var large = y;
    if(x > y){
        small = y;
        large = x;
    }
    var result = 0;
    for var i=0; i<small; i++ {
        result += large;
    }
    return result;
}


func quotient(x: Int, y: Int)->Int?{
    if(y == 0){
        return nil;
    }
    var sum = y;
    var result = 0;
    while(sum <=  x){
        sum += y;
        result++;
    }
    return result;
}
/*
if let q = quotient(7, y: 3){
    print("3 fits in 7 \(q) times");
}else{
    print("error! probably division by zero");
}
*/
func remainder(x: Int, y: Int)->Int?{
    if(y == 0){
        return nil;
    }
    return distance(x, y: product(quotient(x, y: y)!, y: y));
    
}


var x = 8;
let y = x+=1;
print(y);

func division(x: Int, y: Int)->(Int,Int)?{
    if(y==0){
        return nil;
    }
    var sum = y;
    var largestProductOfY = 0;
    var result = 0;
    while(sum <=  x){
        sum += y;
        largestProductOfY += y;
        result++;
    }
    return (result,distance(x, y: largestProductOfY));
}



