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
    
    
    //Listen for Keyboard Event
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)

 
    
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
    
    
     @objc func keyboardWillChange(notification : Notification){
        
        guard let keyboardRect = (notification.userInfo? [UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else{
            return
        }
        if notification.name == UIResponder.keyboardWillShowNotification || notification.name == UIResponder.keyboardWillChangeFrameNotification
        {
            if(view.frame.size.height == 568){view.frame.origin.y = -keyboardRect.height}
            if(view.frame.size.height == 667){view.frame.origin.y = -keyboardRect.height/2}
            print(view.frame.size.height)
        }
        else{
         view.frame.origin.y = 0
        }
    }
       
       deinit {
           //Stop listening for keyboard hide/show events
           NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
           NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
           NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
       }
    
    
    
    
}
