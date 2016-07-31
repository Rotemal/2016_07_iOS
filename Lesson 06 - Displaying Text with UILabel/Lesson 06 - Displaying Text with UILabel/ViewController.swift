//
//  ViewController.swift
//  Lesson 06 - Displaying Text with UILabel
//
//  Created by Elad Lavi on 31/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var label: UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        let w:CGFloat = 200;
        
        label = UILabel(frame: CGRect(x: 0, y: 30, width: w, height: 30));
        label.frame.origin.x = 30;
        label.center.x = view.center.x;
        label.textAlignment = .Center;
        label.text = "welcome to HackerU";
        label.numberOfLines = 1;
        
        label.backgroundColor = UIColor.redColor();
        label.lineBreakMode = .ByTruncatingTail;
        label.font = UIFont.boldSystemFontOfSize(14);
        
        view.addSubview(label);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

