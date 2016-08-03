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
    //var txtUserName: UITextField?;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /*
        alertController = UIAlertController(title: "title", message: "message", preferredStyle: .Alert);
        
        let actionDone = UIAlertAction(title: "Done", style: .Default) { [weak self](action: UIAlertAction) in
            //print("done.. \(self.txtUserName!.text!)");
            
            let t = self!.alertController.textFields![0].text!;
            
            print("done \(t)");
        }
        let actionCancel = UIAlertAction(title: "Cancel", style: .Destructive) { [weak self](action: UIAlertAction) in
            //print("done.. \(self.txtUserName!.text!)");
            
            let t = self!.alertController.textFields![0].text!;
            
            print("cancel \(t)");
        }
        alertController.addTextFieldWithConfigurationHandler { (textField: UITextField) in
            textField.placeholder = "username";
            //self.txtUserName = textField;
        }
        
        alertController.addAction(actionDone);
        alertController.addAction(actionCancel);
        */
        
        
        alertController = UIAlertController(title: "Choose how you would like to share this photo", message: "You cannot restore deleted photo", preferredStyle: .ActionSheet);
        let actionEmail = UIAlertAction(title: "via Email", style: .Default) { (action: UIAlertAction) in
            //TODO: send image over email
        }
        let actionWhatsapp = UIAlertAction(title: "Whatsapp", style: .Default) { (action: UIAlertAction) in
            
        }
        let actionDelete = UIAlertAction(title: "Delete photo", style: .Destructive) { (action: UIAlertAction) in
            //DELETE THE PHOTO
        }
        alertController.addAction(actionEmail);
        alertController.addAction(actionWhatsapp);
        alertController.addAction(actionDelete);
        
    }
    
    
        
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated);
        
        
        
        //alert("title", message: "message: go to lunch break");
        
        presentViewController(alertController, animated: true, completion: nil);
        
    }
    
    

    
    
    
    
    
    func alert(title: String, message: String){
        var alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert);
        let action = UIAlertAction(title: "Ok", style: .Default, handler:  nil);
        alertController.addAction(action);
        presentViewController(alertController, animated: true, completion: nil);
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

