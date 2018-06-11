//
//  ViewController.swift
//  Project
//
//  Created by Boris Bielik on 06/06/2018.
//  Copyright © 2018 Boris Bielik. All rights reserved.
//

import UIKit

//Section data
struct Section {
    let title: String
    let rows: [String]
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    //sections
    private(set) var sections: [Section] = []
    
    override func viewDidLoad() {
        setupTableView()
        reloadData()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func setupTableView() {
        let headerNib = UINib(nibName: LabelTableHeaderFooterView.className, bundle: nil)
        tableView.register(headerNib, forHeaderFooterViewReuseIdentifier: LabelTableHeaderFooterView.identifier)
        
        let cellNib = UINib(nibName: LabelTableViewCell.className, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: LabelTableViewCell.identifier)
        
        tableView.rowHeight = 50
    }

    //Reloads table view data
    func reloadData() {
        for sectionIndex in 0..<3 {
            var rows: [String] = []
            
            for rowIndex in 0..<3 {
                let row = "Row #\(rowIndex)"
                rows.append(row)
            }
            
            let section = Section(title: "Section #\(sectionIndex)", rows: rows)
            sections.append(section)
        }
        
        tableView.reloadData()
    }
    
}

extension ViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: LabelTableViewCell.identifier) as? LabelTableViewCell else {
            fatalError("Unexpected cell type for identifier: \(LabelTableViewCell.identifier)")
        }
        
        cell.label.text = sections[indexPath.section].rows[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let title = sections[section].title
        return LabelTableHeaderFooterView.dequeueHeaderFooterView(in: tableView, withTitle: title)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
}

extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let section = sections[indexPath.section]
        let row = section.rows[indexPath.row]
        
        print("Tapped cell in section: \(section.title) in row: \(row)")
    }
}

