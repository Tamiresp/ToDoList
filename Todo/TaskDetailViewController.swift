//
//  TaskDetailViewController.swift
//  Todo
//
//  Created by tamires.p.silva on 08/08/20.
//  Copyright © 2020 Tamires. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var descDetail: UITextView!
    
    var tasks = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleDetail.text = tasks.description
    }
}
