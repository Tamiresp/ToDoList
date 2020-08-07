//
//  InsertViewController.swift
//  Todo
//
//  Created by tamires.p.silva on 06/08/20.
//  Copyright © 2020 Tamires. All rights reserved.
//

import UIKit

class InsertViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var titleTask: UITextField!
    @IBOutlet weak var dateTask: UIDatePicker!
    @IBOutlet weak var descTask: UITextField!
    
    var tasks = [String]()

    var callback: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "New Task"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask))
        descTask.layer.borderWidth = 1
        descTask.layer.borderColor = UIColor.lightGray.cgColor
        descTask.layer.cornerRadius = 10
       
        titleTask.delegate = self
        
        

        // Do any additional setup after loading the view.
    }
    
    @objc func saveTask() {
        alert()
//        let view = ViewController(nibName: "ViewController", bundle: nil)
//        view.callback = { [weak self] in
//            self?.alert()
//        }
       
    }
    
    func add() {
        tasks.append("teste")
    }
    
    func msg() -> String {
        if titleTask.text!.isEmpty {
            return "Mandatory Title Field"
        } else {
            return "Task Added Successfully"
        }
    }
    
    func actionFlow() {
        if titleTask.text!.isEmpty {
            return
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func alert(){
        let alert = UIAlertController(title:"Warning", message: msg(), preferredStyle:UIAlertController.Style.alert )
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { action in
            self.actionFlow()
        }))
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        return true
    }
}
