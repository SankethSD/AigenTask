//
//  User+CoreDataProperties.swift
//  AigenTask
//
//  Created by Sanketh S D on 12/5/22.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var email: String?
    @NSManaged public var password: String?
    @NSManaged public var fullName: String?

}

extension User : Identifiable {

}
