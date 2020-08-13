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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    @IBAction func insertBtn(_ sender: Any) {
        let view = InsertViewController(nibName: "InsertViewController", bundle: nil)
    
        navigationController?.pushViewController(view, animated: true)
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TodoDataSource.shared.tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = table.dequeueReusableCell(withIdentifier: "cell") as? ListTableViewCell
        else{
            return UITableViewCell()
        }
        cell.configure(with: TodoDataSource.shared.tasks[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController{
    private func configureTableView(){
        table.delegate = self
        table.dataSource = self
        
        let nib = UINib(nibName: "ListTableViewCell", bundle: nil)
        table.register(nib, forCellReuseIdentifier: "cell")
    }
}
