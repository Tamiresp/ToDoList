//
//  ViewController.swift
//  Todo
//
//  Created by tamires.p.silva on 04/08/20.
//  Copyright © 2020 Tamires. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var table: UITableView!
    
    var tasks = [String]()
    
    var callback: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        tasks.append("teste")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func insertBtn(_ sender: Any) {
        let view = InsertViewController(nibName: "InsertViewController", bundle: nil)
        
        navigationController?.pushViewController(view, animated: true)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

