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
/*
func power(x: Int, y: Int) ->Int{
    if(x == 0){
        if(y == 0){
            return -1;
        }
        return 0;
    }
    if(y == 0 || x == 1){
        return 1;
    }
    var result = x;
    for var i=1; i<y; i++ {
        result *= x;
    }
    return result;
}
*/


func power(x: Int, y: Int) ->Int{
    if(x == 0){
        if(y == 0){
            return -1;
        }
        return 0;
    }
    if(y == 0 || x == 1){
        return 1;
    }
    return power(x, y: y-1 ) * x;
}

func sqrt(x: Int)->Int{
    var result = 0;
    while(result * result < x){
        result++;
    }
    return result;
}

func sumOfDigits(var x: Int)->Int{
    var result = 0;
    while(x != 0){
        let lastDigit = x%10;
        x /= 10;
        
        result += lastDigit;
    }
    return result;
}

func largestDigit(var x: Int)->Int{
    var result = 0;
    while(x != 0){
        let lastDigit = x%10;
        x /= 10;
        
        if(lastDigit > result){
            result = lastDigit;
        }
    }
    return result;
}

func reverseDigits(var x: Int)->Int{
    var result = 0;
    while(x != 0){
        let lastDigit = x%10;
        x /= 10;
        
        result = result * 10 + lastDigit;
    }
    return result;
}


func largestNum(nums:[Int])->Int?{
    if nums.count == 0{
        return nil;
    }
    var result = nums[0];
    for var i=1; i<nums.count; i++ {
        if nums[i] > result{
            result = nums[i];
        }
    }
    return result;
}


func averageNum(nums:[Int])->Double?{
    if nums.count == 0{
        return nil;
    }
    var sum = 0;
    for num in nums{
        sum += num;
    }
    return Double(sum) / Double(nums.count);
}



