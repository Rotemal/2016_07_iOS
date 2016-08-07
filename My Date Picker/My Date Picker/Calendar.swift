//
//  Calendar.swift
//  My Date Picker
//
//  Created by Elad Lavi on 07/08/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

class Calendar{
    static let monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    static let daysInMonth = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    static let daysOfWeek = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
    static let initialDay = 5;
    
    static func weekdayInYear(dayInYear: Int)->String{
        return daysOfWeek[(initialDay + dayInYear - 1) % 7];
    }
    
    /*
    static func dayToString(dayInYear: Int)->String{
        var sum = 0;
        var month = 0;
        while(sum < dayInYear){
            sum += daysInMonth[month++];
        }
        month--;
        sum -= daysInMonth[month];
        return "\(weekdayInYear(dayInYear)), \(monthNames[month]) \(dayInYear - sum))";
    }
    */
    
    
    static func dayInYear(month: Int, day:Int)->Int{
        var result = day;
        for var i=0; i<month; i++ {
            result += daysInMonth[i];
        }
        return result;
    }
    
    static func dayToString(month: Int, day:Int)->String{
        return "\(weekdayInYear(dayInYear(month, day: day))), \(monthNames[month]) \(day))";
    }
    
    
    
    
    
    
    
    
    
}