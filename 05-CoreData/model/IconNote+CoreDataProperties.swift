//
//  IconNote+CoreDataProperties.swift
//  05-CoreData
//
//  Created by Jermaine Francoeur on 2020-11-17.
//
//

import Foundation
import CoreData


extension IconNote {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<IconNote> {
        return NSFetchRequest<IconNote>(entityName: "IconNote")
    }

    @NSManaged public var icon: String?
    @NSManaged public var text: String?

}

extension IconNote : Identifiable {

}
