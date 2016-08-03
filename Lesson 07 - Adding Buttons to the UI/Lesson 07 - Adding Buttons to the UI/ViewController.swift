//
//  ViewController.swift
//  Lesson 07 - Adding Buttons to the UI
//
//  Created by Elad Lavi on 03/08/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var button: UIButton!;
    let greenButtonImage = UIImage(named: "green_button");
    let blueButtonImage = UIImage(named: "blue_button");
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        //an example of a simple button (with text only)
        button = UIButton(type: .System);//"System" is a simple button
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 30);
        button.center = view.center;
        button.setTitle("Click Me", forState: .Normal);
        button.setTitle("I'm Clicked", forState: .Highlighted);
        //"addTarget" connects the button the method
        button.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside);
        button.addTarget(self, action: "buttonTouchDown:", forControlEvents: .TouchDown);
        view.addSubview(button);
        */
        
        button = UIButton(type: .Custom);//"Custom" allows images
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 150);
        button.center = view.center;
        button.setTitle("Click Me", forState: .Normal);
        button.setBackgroundImage(greenButtonImage, forState: .Normal);
        button.setBackgroundImage(blueButtonImage, forState: .Highlighted);
        view.addSubview(button);
        
        
    }
    
    func buttonClicked(sender: UIButton){
        print("button clicked");
    }
    
    func buttonTouchDown(sender: UIButton){
        print("button touched");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

