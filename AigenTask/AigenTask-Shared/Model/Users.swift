//
//  Users.swift
//  AigenTask
//
//  Created by Sanketh S D on 12/5/22.
//

import UIKit

struct UserDetails: Codable {
    
    var email: String?
    var fullName: String?
    var password: String?
    
    static func fetchUser() -> User? {
        let users = PersistenceManager.sharedInstance.fetch(User.self)
        return users.first
    }
    
    static func createNewUser(fullName: String?, email: String?, password: String?) {
        if let currentUser = UserDetails.fetchUser() {
            UserDetails.deleteUser(user: currentUser)
        }
        
        let newUser = User(context: PersistenceManager.sharedInstance.context)
        setData(currentUser: newUser, fullName: fullName, email: email, password: password)
        PersistenceManager.sharedInstance.saveContext()
    }
    
    static func deleteUser(user: User) {
        PersistenceManager.sharedInstance.delete(user)
    }
    
    static func setData(currentUser: User, fullName: String?, email: String?, password: String?) {
        currentUser.email = email
        currentUser.fullName = fullName
        currentUser.password = password
    }
    
    static func updateUser(key: String, value: Any?) {
        let currentUser = UserDetails.fetchUser()
        switch key {
        case Constants.fullName: currentUser?.fullName = value as? String
            break
        case Constants.password: currentUser?.password = value as? String
            break
        case Constants.email: currentUser?.email = value as? String
            break
        default:
            break
        }
        PersistenceManager.sharedInstance.saveContext()
    }
    
}
