//
//  ViewController.swift
//  Date Picker
//
//  Created by Elad Lavi on 10/08/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var datePicker: UIDatePicker!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker();
        datePicker.center = view.center;
        view.addSubview(datePicker);
        
        let chosedDate = datePicker.date;
        print(chosedDate);
        
        datePicker.addTarget(self, action: "datePickerDateChanged:", forControlEvents: .ValueChanged);
        
        
        let today = NSDate();
        let oneYearTime:NSTimeInterval = 365 * 24 * 60 * 60;
        let oneYearFromToday = today.dateByAddingTimeInterval(oneYearTime);
        let oneYearBeforeToday = today.dateByAddingTimeInterval(-oneYearTime);
        
        datePicker.minimumDate = oneYearBeforeToday;
        datePicker.maximumDate = oneYearFromToday;
        
    }
    
    func datePickerDateChanged(datePicker: UIDatePicker){
        print("selected date is \(datePicker.date)");
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

