//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Иван Семикин on 01/03/2024.
//

import UIKit

final class ContactDetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var persons: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = persons.fuulname
        phoneLabel.text = "Phone: \(persons.phoneNumber)"
        emailLabel.text = "Email: \(persons.email)"
    }
}
