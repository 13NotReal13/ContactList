//
//  Person.swift
//  ContactList
//
//  Created by Иван Семикин on 01/03/2024.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fuulname: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        let dataStore = DataStore.chared
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        let emails = dataStore.emailAddresses.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
