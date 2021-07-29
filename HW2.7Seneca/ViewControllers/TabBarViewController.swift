//
//  TabBarViewController.swift
//  HW2.7Seneca
//
//  Created by Дмитрий Дмитрий on 28.07.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let people = Person.getPersonalList()


    override func viewDidLoad() {
        super.viewDidLoad()
        getOtherVC()
    }

    private func getOtherVC() {
        guard let allOtherVC = viewControllers else { return }
        
        for viewController in allOtherVC {
            if let fullFormVC = viewController as? FullFormOfPersonListTableViewController {
                fullFormVC.people = people
            } else if let shortFormVC = viewController as? ShortFormOfPersonalListTableViewController {
                shortFormVC.people = people
            }
            
        }
    }

}
