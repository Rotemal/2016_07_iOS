//
//  Canvas.swift
//  Lesson 04 - Learning Swift
//
//  Created by Elad Lavi on 24/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation
class Canvas{
    var canvas:[[Bool]];
    let screenWidth = 60;
    let screenHeight = 30;
    init(){
        canvas = [[Bool]]();
        for _ in 0..<screenHeight{
            var row = [Bool]();
            for _ in 0..<screenWidth{
                row.append(false);
            }
            canvas.append(row);
        }
    }
    
    func drawRectangle(x: Int, y: Int, width: Int, height: Int){
        //TODO: check validity of parameters
        for var i=0; i<width; i++ {
            canvas[y][x+i] = true;
            canvas[y+height-1][x+i] = true;
        }
        for var i=0; i<height; i++ {
            canvas[y+i][x] = true;
            canvas[y+i][x+width-1] = true;
        }
        
    }
    
    func paint(){
        for i in 0..<screenHeight{
            var row = "";
            for j in 0..<screenWidth{
                row += canvas[i][j] ? "*" : " ";
            }
            print(row);
        }
    }
    
    
    
    
}