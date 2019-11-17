//
//  MyOfficeVC.swift
//  rokkhiOffice
//
//  Created by Shafiqul  Islam on 11/16/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import UIKit

class MyOfficeVC: UIViewController {
    
    @IBOutlet weak var urgentTag: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urgentTag.layer.borderColor = #colorLiteral(red: 0.2235294118, green: 0.7176470588, blue: 0.1647058824, alpha: 1)
        urgentTag.layer.borderWidth = 1
        urgentTag.layer.masksToBounds = true
        urgentTag.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
    }

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
