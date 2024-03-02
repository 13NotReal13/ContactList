//
//  SectionTableViewController.swift
//  ContactList
//
//  Created by Иван Семикин on 01/03/2024.
//

import UIKit

final class SectionTableViewController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        content.text = person.rows[indexPath.row]
        
        content.image = indexPath.row == 0
            ? UIImage(systemName: "phone")
            : UIImage(systemName: "tray")
        
        cell.contentConfiguration = content
        return cell
    }
    
}

// MARK: UITableViewDelegate
extension SectionTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let contentView = UIView()
        contentView.backgroundColor = .gray
        
        let fullnameLabel = UILabel(
            frame: CGRect(
                x: 16,
                y: 3,
                width: tableView.frame.width - 32,
                height: 20
            )
        )
        
        fullnameLabel.text = persons[section].fuulname
        fullnameLabel.textColor = .white
        fullnameLabel.font = UIFont.boldSystemFont(ofSize: 17)
        
        contentView.addSubview(fullnameLabel)
        return contentView
    }
}
