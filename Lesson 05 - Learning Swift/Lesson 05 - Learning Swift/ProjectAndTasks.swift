//
//  ProjectAndTasks.swift
//  Lesson 05 - Learning Swift
//
//  Created by Elad Lavi on 27/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

class Project: TaskCompletedDelegate {
    var name = "";
    var listOfTasks = [Task]();
    var completedCounter = 0;
    func projectCompleted(){
        print("project \(self.name) is completed.");
    }
    
    func taskCompleted(task: Task) {
        completedCounter++;
        if completedCounter == listOfTasks.count{
            projectCompleted();
        }
    }
    
}

class Task{
    var name = "";
    var delegate: TaskCompletedDelegate?;
    private var _done = false;
    func done(){
        _done = true;
        if let theDelegate = delegate{
            theDelegate.taskCompleted(self);
            delegate = nil;
        }
    }
}

protocol TaskCompletedDelegate {
    func taskCompleted(task: Task);
}

