//
//  AddDoITViewController.swift
//  DoIT
//
//  Created by Dmitriy Porollo on 04/05/2019.
//  Copyright © 2019 Dmitriy Porollo. All rights reserved.
//

import UIKit

class AddDoITViewController: UIViewController {
    
    @IBOutlet weak var taskTitleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previusViewController = DoITTableViewController();
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    @IBAction func addTask(_ sender: Any) {
        let doIT = DoIT();
        doIT.name = taskTitleTextField.text!;
        doIT.important = importantSwitch.isOn;
    
        previusViewController.doIts.append(doIT);
        previusViewController.tableView.reloadData();
        navigationController?.popViewController(animated: true);
    }
}
