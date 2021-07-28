//
//  AdditionalDetailsViewController.swift
//  HW2.7Seneca
//
//  Created by Дмитрий Дмитрий on 28.07.2021.
//

import UIKit

class AdditionalDetailsViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var personDetails: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = personDetails.fullName
        emailLabel.text = "Email: \(personDetails.email)"
        phoneNumberLabel.text = "Phone: \(personDetails.phoneNumber)"
    }
}
