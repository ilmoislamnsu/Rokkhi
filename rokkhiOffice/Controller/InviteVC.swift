//
//  InviteVC.swift
//  rokkhiOffice
//
//  Created by Shafiqul  Islam on 11/14/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import UIKit

class InviteVC: UIViewController {
    
    @IBOutlet weak var addFromContactBtn: UIButton!
    @IBOutlet weak var invitePicture: UIImageView!
    @IBOutlet weak var dateDisplay: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createToolbar()  //Toolbar Date Picker
        
        invitePicture.layer.masksToBounds = true
        invitePicture.layer.cornerRadius = invitePicture.layer.frame.width / 2
        addFromContactBtn.layer.masksToBounds = true
        addFromContactBtn.layer.cornerRadius = addFromContactBtn.layer.frame.height / 2
        addFromContactBtn.layer.borderColor = #colorLiteral(red: 0.3607843137, green: 0.8039215686, blue: 0.1294117647, alpha: 1)
        addFromContactBtn.layer.borderWidth = 1.5
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }
    
    
    //Step 1: Create An Outlet of text Field Naming "dateDisplay"
    //Step 2: Under the superViewDidload add CreateToolbar()
    let picker = UIDatePicker() //For Adding Date Picker with done button
    //Toolbar Date Picker
    func createToolbar() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(self.showDate))
        toolbar.setItems([done] , animated: false)
        dateDisplay.inputAccessoryView = toolbar
        dateDisplay.inputView = picker
        picker.datePickerMode = .date
        
    }
    @objc func showDate(){
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "dd-MM-YYYY"
        let string = dateFormat.string(from: picker.date)
        dateDisplay.text = string
        self.view.endEditing(true)
    }
    //End Of Toolbar Date Picker
    //
    
    
    
    
}
