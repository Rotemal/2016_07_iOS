//
//  ViewController.swift
//  2016-08-03 Homework
//
//  Created by Elad Lavi on 03/08/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let lionImage = UIImage(named: "lion");
    var lionImageView: UIImageView!;
    var lblTitle: UILabel!;
    var lionContainer: UIView!;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        let lionHeight:CGFloat = 250;
        let titleHeight:CGFloat = 30;
        let padding:CGFloat = 5;
        
        lionContainer = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: lionHeight + padding + titleHeight));
        lionContainer.center = view.center;
        view.addSubview(lionContainer);
        
        
        
        lionImageView = UIImageView(image: lionImage);
        lionImageView.frame = CGRect(x: 0, y: 0, width: lionContainer.frame.width, height: lionHeight);
        lionImageView.contentMode = .ScaleAspectFit;
        //lionImageView.center.x = view.center.x;
        lionContainer.addSubview(lionImageView);
        
        lblTitle = UILabel(frame: CGRect(x: 0, y: lionHeight + padding, width: lionContainer.frame.width, height: titleHeight));
        lblTitle.text = "This is a lion";
        lblTitle.textAlignment = .Center;
        lionContainer.addSubview(lblTitle);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

