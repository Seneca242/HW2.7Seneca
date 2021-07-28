//
//  FullFormOfPersonListTableViewController.swift
//  HW2.7Seneca
//
//  Created by Дмитрий Дмитрий on 28.07.2021.
//

import UIKit

class FullFormOfPersonListTableViewController: UITableViewController {

    var people: [Person] = []
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        people.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        people[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "identifier", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = people[indexPath.section]
        
        if indexPath.row == 0 {
            content.text = person.phoneNumber
        } else {
            content.text = person.email
        }
        cell.contentConfiguration = content
        
        return cell
    }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    
}



