//
//  ViewController.swift
//  My Date Picker
//
//  Created by Elad Lavi on 07/08/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pickerView: UIPickerView!;
    var pickerViewDelegate = DatePickerViewDelegate();
    var btnShowDate: UIButton!;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 300));
        pickerView.center = view.center;
        pickerView.delegate = pickerViewDelegate;
        pickerView.dataSource = pickerViewDelegate;
        view.addSubview(pickerView);
        
        btnShowDate = UIButton(type: .System);
        btnShowDate.setTitle("show date", forState: .Normal);
        btnShowDate.frame = CGRect(x: (view.frame.width-100)/2, y: pickerView.frame.maxY + 10, width: 100, height: 30);
        btnShowDate.addTarget(self, action: "btnShowDate:", forControlEvents: .TouchUpInside);
        view.addSubview(btnShowDate);
        
    }
    
    
    func btnShowDate(sender: UIButton){
        let month = pickerView.selectedRowInComponent(0);
        let day = pickerView.selectedRowInComponent(1);
        let dateAsString = Calendar.dayToString(month, day: day+1);
        print(dateAsString);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

