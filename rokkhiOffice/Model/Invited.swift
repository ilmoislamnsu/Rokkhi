//
//  Invited.swift
//  rokkhiOffice
//
//  Created by Shafiqul  Islam on 11/13/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import Foundation

struct Invited {
    private(set) public var name: String
    private(set) public var invitedImageName: String
    private(set) public var invitedDate: String
    private(set) public var expectedDate: String


init(name: String , invitedImageName: String, invitedDate: String, expectedDate: String) {
    self.name = name
    self.invitedImageName = invitedImageName
    self.invitedDate = invitedDate
    self.expectedDate = expectedDate
}
}
