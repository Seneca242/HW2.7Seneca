//
//  Model.swift
//  HW2.7Seneca
//
//  Created by Дмитрий Дмитрий on 28.07.2021.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonalList() -> [Person] {
        var people: [Person] = []
        
//        как перебрать сеты ? через shuffled получилось, а через сеты не додумал, хотя сначала хотел через сеты сделать, ведь в сетах уже всё перемешано
        
//        let names = Set(DataManager.shared.names)
//        let surnames = Set(DataManager.shared.surnames)
//        let phoneNumbers = Set(DataManager.shared.phoneNumbers)
//        let emails = Set(DataManager.shared.emails)
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let count = DataManager.shared.names.count
        
        for count in 0...count-1 {
            let person = Person(
                name: names[count],
                surname: surnames[count],
                phoneNumber: phoneNumbers[count],
                email: emails[count]
            )
            
            people.append(person)
    }
        
        return people
    }
}
