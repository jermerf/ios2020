//
//  Data.swift
//  06-CoreDataGroup
//
//  Created by Jermaine Francoeur on 2020-11-18.
//

import UIKit
import CoreData


class Data {
    public static func getContext() -> NSManagedObjectContext{
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }
    
    public static func save(){
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
}
