//
//  ViewController.swift
//  TableView_exercise
//
//  Created by Gregory Keeley on 11/12/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var topics = swiftTopics

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        print(topics.count)
    }
    
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "swiftTopic", for: indexPath)
        
        cell.textLabel?.text = swiftTopics[indexPath.row]
        
        return cell
    }
}

