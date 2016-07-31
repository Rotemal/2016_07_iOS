//
//  City.swift
//  Lesson 06 - City Exercise
//
//  Created by Elad Lavi on 31/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

class City{
    private var _cityName: String;
    private var _cityCenter: Point;
    private var _numOfResidents: Int64;
    
    init(cityName: String, cityCenter: Point, numOfResidents: Int64){
        self._cityName = cityName;
        self._cityCenter = cityCenter;
        if numOfResidents > 0 {
            self._numOfResidents = numOfResidents;
        }else{
            self._numOfResidents = 0;
        }
    }
    convenience init(city: City){
        self.init(cityName: city._cityName, cityCenter: city._cityCenter, numOfResidents: city._numOfResidents);
    }
    
    var cityName: String{
        get{
            return _cityName;
        }
        set{
            _cityName = newValue;
        }
    }
    
    var cityCenter: Point{
        get{
            return _cityCenter;
        }
        set{
            _cityCenter = newValue;
        }
    }
    
    var numOfResidents: Int64{
        get{
            return _numOfResidents;
        }
        set{
            if newValue >= 0 {
                self._numOfResidents = newValue;
            }
        }
    }
    
    
    func description()->String{
        return "city name: \(_cityName), center: \(_cityCenter.description()), number of residents: \(_numOfResidents)";
    }
    
    func addResidents(num: Int64){
        let temp = _numOfResidents + num;
        if temp >= 0{
            self._numOfResidents = temp;
        }
    }
    
    
    
    
    
    
    
    
    
}