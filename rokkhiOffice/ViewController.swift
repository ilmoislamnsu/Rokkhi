//
//  ViewController.swift
//  rokkhiOffice
//
//  Created by Shafiqul  Islam on 11/9/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profilePhoto: UIImageView!
//    @IBOutlet weak var profilePicture: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        profilePicture.layer.masksToBounds = true
//        profilePicture.layer.cornerRadius = profilePicture.frame.width / 2
        
        profilePhoto.layer.masksToBounds = true
        profilePhoto.layer.cornerRadius = profilePhoto.frame.width / 2
        
    }


}










