//
//  MotionSensor.swift
//  Lesson 06 - Going over Protocol and Delegate again
//
//  Created by Elad Lavi on 31/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

protocol MotionSensorDelegate {
    func motionDetected();
}


class MotionSensor{
    
    var delegate: MotionSensorDelegate?;
    
    func detectMotion(){
        //TODO: code to detect motion
        if let theDelegate = delegate{
            theDelegate.motionDetected();
        }
    }
    
}