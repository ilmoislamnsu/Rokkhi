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
    @IBOutlet weak var tableCellCard: UIView!
    

    
    // Function For updating views in the cell
    
    func update (invited : Invited) {
        invitedImage.image = UIImage(named: invited.invitedImageName)
        invitedName.text = invited.name
        invitationDate.text = invited.invitedDate
        expectedVisit.text = invited.expectedDate
        tableCellCard.layer.cornerRadius = 7
        tableCellCard.layer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.9204569777)
        tableCellCard.layer.shadowOffset = .zero //CGSize(width: 2.0 , height: 3.0)
        tableCellCard.layer.shadowRadius = 10
        tableCellCard.layer.shadowOpacity = 1
    }

}
