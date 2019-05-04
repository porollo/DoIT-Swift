//
//  DoITTableViewController.swift
//  DoIT
//
//  Created by Dmitriy Porollo on 03/05/2019.
//  Copyright © 2019 Dmitriy Porollo. All rights reserved.
//

import UIKit

class DoITTableViewController: UITableViewController {

    var doIts : [DoIT] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        doIts = createDoIts();
    }
    
    func createDoIts() -> [DoIT] {
        
        let beer = DoIT();
        beer.name = "Buy Beer";
        beer.important = false;
        
        let milk = DoIT();
        milk.name = "Buy Milk";
        milk.important = false;
        
        let diner = DoIT();
        diner.name = "Eat Diner";
        diner.important = true;
        
        let icon = DoIT();
        icon.name = "Make App Icons";
        icon.important = true;
        
        return [beer, milk, diner, icon];
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return doIts.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let doIt = doIts[indexPath.row];
        
        if doIt.important {
            cell.textLabel?.text = "🔥 " + doIt.name;
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 16.0);
        } else {
            cell.textLabel?.text = doIt.name;
        }

        return cell;
    }
}
