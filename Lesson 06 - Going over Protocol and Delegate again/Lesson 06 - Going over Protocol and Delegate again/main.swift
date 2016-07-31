//
//  main.swift
//  Lesson 06 - Going over Protocol and Delegate again
//
//  Created by Elad Lavi on 31/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation





let sensor = MotionSensor();
let police = Police();
sensor.delegate = police;
sensor.detectMotion();