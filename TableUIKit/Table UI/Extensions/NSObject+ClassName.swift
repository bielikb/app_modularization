//
//  NSObject+ClassName.swift
//  Project
//
//  Created by Boris Bielik on 06/06/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import Foundation

extension NSObject {

    public class var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last ?? String.init(describing: type(of: self))
    }
    
    public var className: String {
        return type(of: self).className
    }
}
