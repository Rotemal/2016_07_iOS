//
//  ViewController.swift
//  Lesson 08 - solving homework
//
//  Created by Elad Lavi on 07/08/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var btnLogin: UIButton!;
    var alertController: UIAlertController!;
    var users:[User] = [User(username: "elad", password: "12345")];
    var passwordController: UIAlertController!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnLogin = UIButton(type: .System);
        btnLogin.frame = CGRect(x: 0, y: 0, width: 100, height: 30);
        btnLogin.center = view.center;
        btnLogin.setTitle("Login", forState: .Normal);
        btnLogin.addTarget(self, action: #selector(ViewController.btnLogin), forControlEvents: .TouchUpInside);
        view.addSubview(btnLogin);
    }
    
    func btnLogin(sender: UIButton){
        /*
        alertController = UIAlertController(title: "Login", message: "Please enter your credentials", preferredStyle: .Alert);
        alertController.addTextFieldWithConfigurationHandler { (textField: UITextField) in
            textField.placeholder = "user name";
        }
        alertController.addTextFieldWithConfigurationHandler { (textField: UITextField) in
            textField.secureTextEntry = true;
            textField.placeholder = "password";
        }
        let actionLogin = UIAlertAction(title: "login", style: .Default) { [weak self](action: UIAlertAction) in
            let userName = self!.alertController.textFields![0].text!;
            let password = self!.alertController.textFields![1].text!;
            var loginSuccess = false;
            for user in self!.users{
                if user.password == password && user.username == userName{
                    loginSuccess = true;
                    break;
                }
            }
            var title = "login failed";
            var message = "your username or password are incorrect";
            if(loginSuccess){
                title = "login success";
                message = "you're now logged in";
            }
            
            let loginSuccessController = UIAlertController(title: title, message: message, preferredStyle: .Alert);
            let actionClose = UIAlertAction(title: "close", style: .Default, handler: nil);
            loginSuccessController.addAction(actionClose);
            
            self!.presentViewController(loginSuccessController, animated: true, completion: nil);
            
            
        }
        let actionCancel = UIAlertAction(title: "cancel", style: .Cancel) { (action: UIAlertAction) in
            
        }
        alertController.addAction(actionLogin);
        alertController.addAction(actionCancel);
        presentViewController(alertController, animated: true, completion: nil);
         */
        
        alertController = UIAlertController(title: "Login", message: "Please enter your credentials", preferredStyle: .Alert);
        alertController.addTextFieldWithConfigurationHandler { (textField: UITextField) in
            textField.placeholder = "user name";
        }
        
        let actionNext = UIAlertAction(title: "next", style: .Default) { [weak self](action: UIAlertAction) in
            let userName = self!.alertController.textFields![0].text!;
            
            for user in self!.users{
                if user.username == userName{
                    self!.passwordController = UIAlertController(title: "password", message: "enter your password", preferredStyle: .Alert);
                    self!.passwordController.addTextFieldWithConfigurationHandler({ (textField: UITextField) in
                        textField.placeholder = "password";
                        textField.secureTextEntry = true;
                    });
                    let actionLogin = UIAlertAction(title: "login", style: .Default, handler: { [weak self](action: UIAlertAction) in
                        if self!.passwordController.textFields![0].text! == user.password{
                            let loginSuccessController = UIAlertController(title: "login success", message: "you're now logged in", preferredStyle: .Alert);
                            let actionClose = UIAlertAction(title: "close", style: .Default, handler: nil);
                            loginSuccessController.addAction(actionClose);
                            
                            self!.presentViewController(loginSuccessController, animated: true, completion: nil);
                        }else{
                            let loginFailedController = UIAlertController(title: "login failed", message: "your password is incorrect", preferredStyle: .Alert);
                            let actionClose = UIAlertAction(title: "close", style: .Default, handler: nil);
                            loginFailedController.addAction(actionClose);
                            
                            self!.presentViewController(loginFailedController, animated: true, completion: nil);
                        }
                    });
                    self!.passwordController.addAction(actionLogin);
                    self!.presentViewController(self!.passwordController, animated: true, completion: nil);
                    return;
                }
            }
            //login failed
            let loginFailedController = UIAlertController(title: "error", message: "no such user", preferredStyle: .Alert);
            let actionClose = UIAlertAction(title: "close", style: .Default, handler: nil);
            loginFailedController.addAction(actionClose);
            
            self!.presentViewController(loginFailedController, animated: true, completion: nil);
            
        }
        /*
        alertController.addTextFieldWithConfigurationHandler { (textField: UITextField) in
            textField.secureTextEntry = true;
            textField.placeholder = "password";
        }
        */
        
        
        /*
        let actionLogin = UIAlertAction(title: "login", style: .Default) { [weak self](action: UIAlertAction) in
            let userName = self!.alertController.textFields![0].text!;
            let password = self!.alertController.textFields![1].text!;
            var loginSuccess = false;
            for user in self!.users{
                if user.password == password && user.username == userName{
                    loginSuccess = true;
                    break;
                }
            }
            var title = "login failed";
            var message = "your username or password are incorrect";
            if(loginSuccess){
                title = "login success";
                message = "you're now logged in";
            }
            
            let loginSuccessController = UIAlertController(title: title, message: message, preferredStyle: .Alert);
            let actionClose = UIAlertAction(title: "close", style: .Default, handler: nil);
            loginSuccessController.addAction(actionClose);
            
            self!.presentViewController(loginSuccessController, animated: true, completion: nil);
            
            
        }
        */
        let actionCancel = UIAlertAction(title: "cancel", style: .Cancel) { (action: UIAlertAction) in
            
        }
        //alertController.addAction(actionLogin);
        alertController.addAction(actionNext);
        alertController.addAction(actionCancel);
        presentViewController(alertController, animated: true, completion: nil);
        
    }
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

