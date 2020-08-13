//
//  TaskTableViewCell.swift
//  Todo
//
//  Created by tamires.p.silva on 07/08/20.
//  Copyright © 2020 Tamires. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var date: UILabel!
    
    var tasks = [String]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func prepare(with tasks: String) {
        title.text = tasks
        
    }

}
