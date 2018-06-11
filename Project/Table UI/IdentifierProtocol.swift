//
//  IdentifierProtocol.swift
//  Project
//
//  Created by Boris Bielik on 06/06/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import Foundation

protocol Identifier : class {
    static var identifier: String {get}
}

extension Identifier where Self:NSObject {
    
    static var identifier: String {
        return self.className
    }
}
