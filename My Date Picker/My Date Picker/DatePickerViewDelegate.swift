//
//  DatePickerViewDelegate.swift
//  My Date Picker
//
//  Created by Elad Lavi on 07/08/2016.
//  Copyright © 2016 Elad Lavi. All rights reserved.
//

import UIKit

//the class NSObject implements some methods required by the pickerview protocol.
class DatePickerViewDelegate: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2;
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return Calendar.monthNames.count;
        }else{
            return Calendar.daysInMonth[pickerView.selectedRowInComponent(0)];
        }
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            pickerView.reloadComponent(1);
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return Calendar.monthNames[row];
        }else{
            return "\(row+1)";
        }
    }
    
    
    
    
    
}