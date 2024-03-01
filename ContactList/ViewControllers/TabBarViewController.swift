//
//  ViewController.swift
//  ContactList
//
//  Created by Иван Семикин on 01/03/2024.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let persons = Person.getContactList()
        
        let contactListVC = viewControllers?.first as? ContactListViewController
        let sectionTableVC = viewControllers?.last as? SectionTableViewController
        
        contactListVC?.persons = persons
        sectionTableVC?.persons = persons
    }
}

