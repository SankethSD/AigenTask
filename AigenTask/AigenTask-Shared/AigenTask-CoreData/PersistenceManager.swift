//
//  PersistenceManager.swift
//  AigenTask
//
//  Created by Sanketh S D on 12/5/22.
//

import UIKit
import CoreData


class PersistenceManager {
    
    static let sharedInstance = PersistenceManager()
    
    lazy var persistenceContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "AigenTask")
        container.loadPersistentStores { (storeDesc, error) in
            if let error = error as? NSError {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    lazy var context = persistenceContainer.viewContext
    
    
    func saveContext() {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func fetch<T: NSManagedObject>(_ objectType: T.Type) -> [T] {
        let entityName = String(describing: objectType)
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        do {
            let fetchObjects = try context.fetch(fetchRequest) as? [T]
            return fetchObjects ?? [T]()
        } catch {
            return [T]()
        }
    }
    
    func deleteAll<T: NSManagedObject>(_ objectType: T.Type) {
        let entityName = String(describing: objectType)
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        do {
            try persistenceContainer.persistentStoreCoordinator.execute(deleteRequest, with: context)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func delete(_ object: NSManagedObject) {
        context.delete(object)
        saveContext()
    }
    
}
