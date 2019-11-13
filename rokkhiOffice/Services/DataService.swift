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
        Visitor(name: "Joe Black", imageName: "visitorDemo.png"),
        Visitor(name: "Adam Hopking", imageName: "visitorDemo.png"),
        Visitor(name: "Xing Zheng", imageName: "visitorDemo.png"),
        Visitor(name: "Tokunaga Yae", imageName: "visitorDemo.png"),
        Visitor(name: "Shadrias Pearson", imageName: "visitorDemo.png"),
        Visitor(name: "Nado Husa", imageName: "visitorDemo.png"),
        Visitor(name: "Joe Black", imageName: "visitorDemo.png"),
        Visitor(name: "Adam Hopking", imageName: "visitorDemo.png"),
        Visitor(name: "Joe Black", imageName: "visitorDemo.png"),
        Visitor(name: "Adam Hopking", imageName: "visitorDemo.png")
    ]
    
    func getVisitors() -> [Visitor]  {
        return visitors
    }
//End of Visitor Data
    
//Inviteds Data
    private let inviteds = [
    Invited(name: "Joe", invitedImageName: "visitorDemo.png", invitedDate: "12.12.12", expectedDate: "15.12.12"),
    Invited(name: "Joe", invitedImageName: "visitorDemo.png", invitedDate: "12.12.12", expectedDate: "15.12.12"),
        Invited(name: "Joe", invitedImageName: "visitorDemo.png", invitedDate: "12.12.12", expectedDate: "15.12.12"),
        Invited(name: "Joe", invitedImageName: "visitorDemo.png", invitedDate: "12.12.12", expectedDate: "15.12.12"),
        Invited(name: "Joe", invitedImageName: "visitorDemo.png", invitedDate: "12.12.12", expectedDate: "15.12.12"),
        Invited(name: "Joe", invitedImageName: "visitorDemo.png", invitedDate: "12.12.12", expectedDate: "15.12.12")
        
        
        
        
    ]
    
    func getInviteds() -> [Invited] {
        return inviteds
    }
    //End Of Inviteds Data
}
 
