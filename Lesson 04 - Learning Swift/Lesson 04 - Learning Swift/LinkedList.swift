//
//  LinkedList.swift
//  Lesson 04 - Learning Swift
//
//  Created by Elad Lavi on 24/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import Foundation

//

class LinkedList {
    
    private var anchor: Link;
    private var last: Link;
    private var _size: Int;
    private var _next:Link;
    
    init(){
        anchor = Link(value: "anchor");
        last = anchor;
        _next = anchor;
        _size = 0;
        
    }
    
    
    var size:Int{
        get{
            return _size;
        }
    }
    
    func add(value: String){
        last.next = Link(value: value);
        _size++;
        last = last.next!;
    }
    
    func indexOf(value: String)->Int{
        //if element doesn't exist, return -1.
        //if it exists more than once, return index of first occurence.
        var link = anchor;
        var counter = -1;
        while(link.next != nil){
            link = link.next!;
            counter++;
            if(link.value == value){
                return counter;
            }
        }
        return -1;
    }
    
    func runOnAll(runnable: (String)->Void){
        var link = anchor;
        while(link.next != nil){
            link = link.next!;
            runnable(link.value);
        }
    }
    
    
    
    func resetNext(){
        _next = anchor;
    }
    
    func next()->String?{
        if(_next.next != nil){
            _next = _next.next!;
            return _next.value;
        }else{
            return nil;
        }
        
    }
    
    
    //A B C D E
    func removeAt(index: Int)->Bool{
        if(index < 0 || index >= _size){
            return false;
        }
        var theOneBefore = anchor;
        for _ in 0..<index {
            theOneBefore = theOneBefore.next!;
        }
        theOneBefore.next = theOneBefore.next!.next;
        _size--;
        return true;
    }
    
    func isEqual(list: LinkedList)->Bool{
        if(self === list){
            return true;
        }
        if(self._size != list.size){
            return false;
        }
        var link1 = self.anchor;
        var link2 = list.anchor;
        while(link1.next != nil){
            link1 = link1.next!;
            link2 = link2.next!;
            if(link1.value != link2.value){
                return false;
            }
        }
        return true;
    }
    
    
    
    subscript(index: Int) -> String {
        get{
            if(index < 0 || index >= _size){
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
            if(index < 0 || index >= _size){
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