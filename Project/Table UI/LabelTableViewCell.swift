//
//  LabelTableViewCell.swift
//  Project
//
//  Created by Boris Bielik on 06/06/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import Foundation
import UIKit

class LabelTableViewCell : TableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var leftIndent: CGFloat = 15 {
        didSet {
            leadingConstraint.constant = leftIndent
        }
    }
}
