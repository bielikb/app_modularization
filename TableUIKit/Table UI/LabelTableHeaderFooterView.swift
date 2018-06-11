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
public class LabelTableHeaderFooterView : TableHeaderFooterView {
    
    @IBOutlet weak public var label: UILabel!
    @IBOutlet weak public var bottomConstraint: NSLayoutConstraint?
    @IBOutlet weak public var leadingConstraint: NSLayoutConstraint?
    
    // left indent
    public var leftIndent: CGFloat = 15 {
        didSet {
            leadingConstraint?.constant = leftIndent
        }
    }
    
    public var bottomIndent: CGFloat = 9 {
        didSet {
            bottomConstraint?.constant = bottomIndent
        }
    }
    
    //reuse view and set title
    class public func dequeueHeaderFooterView(
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
