//
//  LinkedList.swift
//  Lesson 04 - Learning Swift
//
//  Created by Elad Lavi on 24/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

class LinkedList {
    
    var anchor: Link;
    var last: Link;
    var size: Int;
    
    init(){
        anchor = Link(value: "anchor");
        last = anchor;
        size = 0;
    }
    
    func add(value: String){
        last.next = Link(value: value);
        size++;
        last = last.next!;
    }
    
    func indexOf(value: String)->Int{
        //if element doesn't exist, return -1.
        //if it exists more than once, return index of first occurence.
        return -1;
    }
    
    func runOnAll(runnable: (String)->Void){
        var link = anchor;
        while(link.next != nil){
            link = link.next!;
            runnable(link.value);
        }
    }
    
    func isEqual(list: LinkedList)->Bool{
        return false;
    }
    
    subscript(index: Int) -> String {
        get{
            if(index < 0 || index >= size){
                //TODO: this is an invalid index.
                return "invalid index";
            }
            var link = anchor;
            for _ in 0...index{
                link = link.next!;
            }
            return link.value;
        }
        set{
            if(index < 0 || index >= size){
                //TODO: this is an invalid index.
                return;
            }
            var link = anchor;
            for _ in 0...index{
                link = link.next!;
            }
            link.value = newValue;
        }
    }
    
    
}

class Link{
    var value: String;
    var next: Link?;
    init(value: String){
        self.value = value;
    }
    
}