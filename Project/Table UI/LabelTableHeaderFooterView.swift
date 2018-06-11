//
//  LabelTableHeaderFooterView.swift
//  Project
//
//  Created by Boris Bielik on 06/06/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import Foundation
import UIKit

@objcMembers
class LabelTableHeaderFooterView : TableHeaderFooterView {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint?
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint?
    
    // left indent
    var leftIndent: CGFloat = 15 {
        didSet {
            leadingConstraint?.constant = leftIndent
        }
    }
    
    var bottomIndent: CGFloat = 9 {
        didSet {
            bottomConstraint?.constant = 9
        }
    }
    
    //reuse view and set title
    class func dequeueHeaderFooterView(
        in tableView: UITableView,
        withIdentifier identifier: String = LabelTableHeaderFooterView.identifier,
        withTitle title: String) -> LabelTableHeaderFooterView? {
        
        guard let view = self.dequeueHeaderFooterView(in: tableView, withIdentifier: identifier) as? LabelTableHeaderFooterView else {
            return nil
        }
        
        view.label.text = title
        return view
    }
}
