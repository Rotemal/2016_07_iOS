//
//  ViewController.swift
//  Lesson 06 - Displaying Images
//
//  Created by Elad Lavi on 31/07/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let image = UIImage(named: "lion");
    var imageView: UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        //imageView = UIImageView(image: image);
        imageView = UIImageView(frame: view.frame);
        imageView.image = image;
        imageView.contentMode = .ScaleAspectFill;
        imageView.center = view.center;
        view.addSubview(imageView);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

