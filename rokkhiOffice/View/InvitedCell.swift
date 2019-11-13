//
//  InvitedCell.swift
//  rokkhiOffice
//
//  Created by Shafiqul  Islam on 11/13/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import UIKit

class InvitedCell: UITableViewCell {

    
    //Outlets
    @IBOutlet weak var invitedImage : UIImageView!
    @IBOutlet weak var invitedName: UILabel!
    @IBOutlet weak var invitationDate: UILabel!
    @IBOutlet weak var expectedVisit: UILabel!
    
    // Function For updating views in the cell
    
    func update (invited : Invited) {
        invitedImage.image = UIImage(named: invited.invitedImageName)
        invitedName.text = invited.name
        invitationDate.text = invited.invitedDate
        expectedVisit.text = invited.expectedDate
        
    }

}
