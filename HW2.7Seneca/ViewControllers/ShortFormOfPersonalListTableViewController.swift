//
//  ShortFormOfPersonalListTableViewController.swift
//  HW2.7Seneca
//
//  Created by Дмитрий Дмитрий on 28.07.2021.
//

import UIKit

class ShortFormOfPersonalListTableViewController: UITableViewController {

    var people: [Person] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "identifier", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = people[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? AdditionalDetailsViewController else { return }
            detailVC.personDetails = people[indexPath.row]
        }
    }

}
    
