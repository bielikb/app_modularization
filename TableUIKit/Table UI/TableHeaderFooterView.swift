//
//  TableHeaderFooterView.swift
//  Project
//
//  Created by Boris Bielik on 06/06/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import Foundation
import UIKit

@objcMembers
public class TableHeaderFooterView : UITableViewHeaderFooterView, Identifier {
    
    /// dequeue header
    public class func dequeueHeaderFooterView<T: TableHeaderFooterView>(in tableView: UITableView, withIdentifier identifier: String) -> T? {
        return tableView.dequeueReusableHeaderFooterView(withIdentifier: identifier) as? T
    }
}
