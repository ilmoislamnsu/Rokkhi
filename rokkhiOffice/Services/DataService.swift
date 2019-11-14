//
//  DataService.swift
//  rokkhiOffice
//
//  Created by Shafiqul  Islam on 11/13/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import Foundation


//This class contains sample data from where data is used to show in the cell of table view

class DataService {
    static let instance = DataService()

//Visitors Data
    private let visitors = [
        Visitor(name: "Joe Black", imageName: "i1.png"),
        Visitor(name: "Adam Hopking", imageName: "i9.png"),
        Visitor(name: "Xing Zheng", imageName: "i2.png"),
        Visitor(name: "Tokunaga Yae", imageName: "i3.png"),
        Visitor(name: "Shadrias Pearson", imageName: "i4.png"),
        Visitor(name: "Nado Husa", imageName: "i5.png"),
        Visitor(name: "Joe Black", imageName: "i6.png"),
        Visitor(name: "Adam Hopking", imageName: "i7.png"),
        Visitor(name: "Joe Black", imageName: "i11.png"),
        Visitor(name: "Adam Hopking", imageName: "i12.png")
    ]
    
    func getVisitors() -> [Visitor]  {
        return visitors
    }
//End of Visitor Data
    
//Inviteds Data
    
    private let inviteds = [
    Invited(name: "Joe", invitedImageName: "i1.png", invitedDate: "12.12.12", expectedDate: "15.12.12"),
    Invited(name: "Adam Hopking", invitedImageName: "i2.png", invitedDate: "12.12.12", expectedDate: "15.12.12"),
    Invited(name: "Xing Zheng", invitedImageName: "i3.png", invitedDate: "12.12.12", expectedDate: "18.12.12"),
    Invited(name: "Tokunaga Yae", invitedImageName: "i4.png", invitedDate: "12.12.12", expectedDate: "21.12.12"),
    Invited(name: "Adam Hopking", invitedImageName: "i5.png", invitedDate: "12.12.12", expectedDate: "25.12.12"),
    Invited(name: "Joe white", invitedImageName: "i6.png", invitedDate: "12.12.12", expectedDate: "37.12.12")
    ]
    
    func getInviteds() -> [Invited] {
        return inviteds
    }
    //End Of Inviteds Data
}
 
