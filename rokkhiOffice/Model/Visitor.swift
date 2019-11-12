//
//  Visitor.swift
//  rokkhiOffice
//
//  Created by Shafiqul  Islam on 11/13/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import Foundation

struct Visitor {
    private(set) var name: String
    private(set) public var imageName: String
    
    init(name: String , imageName: String) {
        self.name = name
        self.imageName = imageName
    }
}
