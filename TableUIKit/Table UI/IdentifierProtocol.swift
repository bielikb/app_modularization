//
//  IdentifierProtocol.swift
//  Project
//
//  Created by Boris Bielik on 06/06/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import Foundation

public protocol Identifier : class {
    static var identifier: String {get}
}

extension Identifier where Self:NSObject {
    
    static public var identifier: String {
        return self.className
    }
}
