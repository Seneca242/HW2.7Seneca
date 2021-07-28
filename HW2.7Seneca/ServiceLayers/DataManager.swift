//
//  DataManager.swift
//  HW2.7Seneca
//
//  Created by Дмитрий Дмитрий on 28.07.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John", "Mike", "Anna", "Julia"
    ]
    
    let surnames = [
        "White", "Black", "Bush", "Clinton"
    ]
    
    let phoneNumbers = [
        "+755512345", "+755523456", "+755534567", "+755545678"
    ]
    
    let emails = [
        "firstmail@gmail.com", "secondmail@gmail.com", "firdmail@gmail.com", "fourthmail@gmail.com"
    ]
    
    private init() {}
}
