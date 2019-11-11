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
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePhoto.layer.masksToBounds = true
        profilePhoto.layer.cornerRadius = profilePhoto.bounds.width / 2
        
    }


}

