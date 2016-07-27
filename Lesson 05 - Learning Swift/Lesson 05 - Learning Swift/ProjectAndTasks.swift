//
//  ProjectAndTasks.swift
//  Lesson 05 - Learning Swift
//
//  Created by Elad Lavi on 27/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

class Project {
    var name = "";
    var listOfTasks = [Task]();
    func projectCompleted(){
        print("project \(self.name) is completed.");
    }
}

class Task{
    var name = "";
    var done = false;
}