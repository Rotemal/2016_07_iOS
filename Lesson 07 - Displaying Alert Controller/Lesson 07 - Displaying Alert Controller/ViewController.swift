//
//  ViewController.swift
//  Lesson 07 - Displaying Alert Controller
//
//  Created by Elad Lavi on 03/08/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var alertController: UIAlertController!;
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    func alert(title: String, message: String){
        alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert);
        let action = UIAlertAction(title: "Ok", style: .Default, handler:  nil);
        alertController.addAction(action);
        presentViewController(alertController, animated: true, completion: nil);
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated);
        
        
        
        alert("", message: "message: go to lunch break");
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

