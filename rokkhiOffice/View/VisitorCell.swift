//
//  VisitorCell.swift
//  rokkhiOffice
//
//  Created by Shafiqul  Islam on 11/13/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import UIKit

class VisitorCell: UITableViewCell {
    @IBOutlet weak var visitorImg: UIImageView!
    @IBOutlet weak var visitorName: UILabel!
    
    func updateViews (visitor: Visitor){
        visitorImg.image = UIImage(named: visitor.imageName)
        visitorName.text = visitor.name
    }

}
