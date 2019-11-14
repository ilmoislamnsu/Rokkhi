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
    override func viewDidLoad() {
        super.viewDidLoad()
        invitePicture.layer.masksToBounds = true
        invitePicture.layer.cornerRadius = invitePicture.layer.frame.width / 2
        addFromContactBtn.layer.masksToBounds = true
        //addFromContactBtn.layer.cornerRadius = 25
        addFromContactBtn.layer.cornerRadius = addFromContactBtn.layer.frame.height / 2
        
        addFromContactBtn.layer.borderColor = #colorLiteral(red: 0.3607843137, green: 0.8039215686, blue: 0.1294117647, alpha: 1)
        addFromContactBtn.layer.borderWidth = 1.5
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
