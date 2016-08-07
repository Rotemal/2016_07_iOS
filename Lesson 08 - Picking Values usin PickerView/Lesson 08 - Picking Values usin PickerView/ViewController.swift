//
//  ViewController.swift
//  Lesson 08 - Picking Values usin PickerView
//
//  Created by Elad Lavi on 07/08/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import UIKit

//UIPickerViewDataSource - methods that deals with "what should be shown in each line".
//UIPickerViewDelegate - methods that deals with user interaction

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var picker: UIPickerView!;
    var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker = UIPickerView();
        picker.center = view.center;
        picker.delegate = self;
        picker.dataSource = self;
        view.addSubview(picker);
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 2;
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return days.count;
        }else{
            return 31;
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print("in titleForRow \(component) \(row)");
        if component == 0{
            return days[row];
        }else{
            return "\(row+1+30)";
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerView.reloadComponent(1);
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

