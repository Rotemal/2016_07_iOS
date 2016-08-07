//
//  ViewController.swift
//  Lesson 08 - Usin Switch
//
//  Created by Elad Lavi on 07/08/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mySwitch: UISwitch!;
    var soundOn: Bool = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mySwitch = UISwitch(frame: CGRect(x: 0, y: 0, width: 0, height: 0));
        mySwitch.center = view.center;
        mySwitch.setOn(true, animated: true);
        if mySwitch.on{
            //is on
            soundOn = true;
        }else{
            //is off
            soundOn = false;
        }
        
        mySwitch.addTarget(self, action: "switchChanged:", forControlEvents: .ValueChanged);
        view.addSubview(mySwitch);
        
        
        mySwitch.tintColor = UIColor.redColor();
        mySwitch.onTintColor = UIColor.brownColor();
        mySwitch.thumbTintColor = UIColor.greenColor();
    }
    
    func switchChanged(sender: UISwitch){
        print("switch changed");
        if sender.on{
            print("to on");
        }else{
            print("to off");
        }
    }
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

