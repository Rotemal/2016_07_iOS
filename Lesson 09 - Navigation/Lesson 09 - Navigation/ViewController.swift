//
//  ViewController.swift
//  Lesson 09 - Navigation
//
//  Created by Elad Lavi on 10/08/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var secondViewController: SecondViewController!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let btnShowSecond = UIButton(type: .System);
        btnShowSecond.frame = CGRect(x: 0, y: 50, width: 150, height: 30);
        btnShowSecond.center.x = view.center.x;
        btnShowSecond.setTitle("show second", forState: .Normal);
        btnShowSecond.addTarget(self, action: "btnShowSecond:", forControlEvents: .TouchUpInside);
        view.addSubview(btnShowSecond);
        
        secondViewController = SecondViewController();
    }
    
    func btnShowSecond(sender: UIButton){
        presentViewController(secondViewController, animated: true, completion: nil);
    }
    
    
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

