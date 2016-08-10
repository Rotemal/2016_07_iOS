//
//  SecondViewController.swift
//  Lesson 09 - Navigation
//
//  Created by Elad Lavi on 10/08/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30));
        label.text = "Second";
        label.center = view.center;
        view.addSubview(label);
        
        view.backgroundColor = UIColor.whiteColor();//otherwise it is transparent which causes a black screen.
        let btnClose = UIButton(type: .System);
        btnClose.frame = CGRect(x: label.frame.origin.x, y: label.frame.maxY + 10, width: label.frame.width, height: label.frame.height);
        btnClose.setTitle("close", forState: .Normal);
        btnClose.addTarget(self, action: "btnClose:", forControlEvents: .TouchUpInside);
        view.addSubview(btnClose);
    }
    
    func btnClose(sender: UIButton){
        dismissViewControllerAnimated(true, completion: nil);
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}