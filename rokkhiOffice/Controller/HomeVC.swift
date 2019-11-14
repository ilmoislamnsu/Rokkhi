//
//  ViewController.swift
//  rokkhiOffice
//
//  Created by Shafiqul  Islam on 11/9/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var profilePhoto: UIImageView!
    
    
    
//    @IBOutlet weak var profilePicture: UIImageView!
    
//    @IBOutlet weak var profilePicture: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       profilePhoto.layer.masksToBounds = true
       profilePhoto.layer.cornerRadius = profilePhoto.frame.width / 2

    }


}










