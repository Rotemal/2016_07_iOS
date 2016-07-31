//
//  Country.swift
//  Lesson 06 - City Exercise
//
//  Created by Elad Lavi on 31/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

class Country{
    private var _countryName: String;
    var _cities:[City];
    
    init(countryName: String){
        self._countryName = countryName;
        _cities = [City]();
    }
    
    func getNumOfResidents()->Int64{
        //TODO: possible overflow
        var sum: Int64 = 0;
        for city in _cities{
            sum += city.numOfResidents;
        }
        return sum;
    }
    
    func longestDistance()->Double{
        var max: Double = 0;
        var temp: Double = 0;
        for var i=0; i<self._cities.count-1; i++ {
            for var j=i+1; j < self._cities.count; j++ {
                temp = _cities[i].cityCenter.distance(_cities[j].cityCenter);
                if temp > max{
                    max = temp;
                }
            }
        }
        return max;
    }
    
    
    func citiesNorthOf(cityName: String)->[City]{
        var cities = [City]();
        var cityCenter:Point?;
        for c in _cities{
            if c.cityName == cityName{
                cityCenter = c.cityCenter;
                break;
            }
        }
        if let theCityCenter = cityCenter{
            for c in _cities{
                if c.cityCenter.isAbove(theCityCenter){
                    cities.append(c);
                }
            }
        }
        return cities;
    }
    
    
    
    
    
    
    
    
}