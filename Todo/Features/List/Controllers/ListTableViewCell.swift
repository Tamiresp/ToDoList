//
//  ListTableViewCell.swift
//  Todo
//
//  Created by tamires.p.silva on 11/08/20.
//  Copyright © 2020 Tamires. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tagColor: UIView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var todoLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
}

extension ListTableViewCell {
    func configure(with model: Tasks) {
        tagColor.backgroundColor = model.type.typeColor
        title.text = model.type.typeDescription
        title.textColor = model.type.typeColor
        todoLabel.text = model.descTask
        dateLabel.text = formatDate(model.date)
    }
    
    private func formatDate(_ date: Date) -> String {
        let format = DateFormatter()
        format.dateFormat = "HH:mm a"
        
        return "at \(format.string(from: date))"
    }
}
