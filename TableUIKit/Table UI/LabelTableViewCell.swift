//
//  LabelTableViewCell.swift
//  Project
//
//  Created by Boris Bielik on 06/06/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import Foundation
import UIKit

public class LabelTableViewCell : TableViewCell {
    @IBOutlet weak public var label: UILabel!
    @IBOutlet weak public var leadingConstraint: NSLayoutConstraint!
    
    public var leftIndent: CGFloat = 15 {
        didSet {
            leadingConstraint.constant = leftIndent
        }
    }
}
