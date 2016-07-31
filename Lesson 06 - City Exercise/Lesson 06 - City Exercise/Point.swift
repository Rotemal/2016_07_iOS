//
//  Point.swift
//  Lesson 06 - City Exercise
//
//  Created by Elad Lavi on 31/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

class Point{
    private var _x: Int;
    private var _y: Int;
    init(x: Int, y: Int){
        if x > 0{
            self._x = x;
        }else{
            self._x = 0;
        }
        if y > 0{
            self._y = y;
        }else{
            self._y = 0;
        }
    }
    convenience init(point: Point){
        self.init(x: point._x, y: point._y);
    }
    
    
    var x:Int{
        get{
            return _x;
        }
        set{
            if newValue > 0{
                _x = newValue;
            }
        }
    }
    
    var y:Int{
        get{
            return _y;
        }
        set{
            if newValue > 0{
                _y = newValue;
            }
        }
    }
    
    func description()->String{
        return "(\(_x),\(_y))";
    }
    
    func equals(point: Point)->Bool{
        return (self._x == point._x) && (self._y == point._y);
    }
    
    func isAbove(point: Point)->Bool{
        return self._y > point._y;
    }
    
    func isUnder(point: Point)->Bool{
        return point.isAbove(self);
    }
    
    func isRight(point: Point)->Bool{
        return self._x > point._x;
    }
    
    func isLeft(point: Point)->Bool{
        return point.isRight(self);
    }
    
    func distance(point: Point)->Double{
        let deltaX = self._x - point._x;
        let deltaY = self._y - point._y;
        return sqrt(Double(deltaX * deltaX + deltaY * deltaY));
    }
    
    
    
    
    
    
    
    
    
    
    
}