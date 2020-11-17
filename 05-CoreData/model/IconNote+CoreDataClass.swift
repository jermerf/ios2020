//
//  IconNote+CoreDataClass.swift
//  05-CoreData
//
//  Created by Jermaine Francoeur on 2020-11-17.
//
//

import Foundation
import CoreData

@objc(IconNote)
public class IconNote: NSManagedObject {

    static func create(IconString icon: String?, NoteText text: String?) -> IconNote {
        let context = DataManager.getContext()
        let entity = IconNote.entity()
        let iconNote = IconNote(entity: entity, insertInto: context)
        iconNote.icon = icon
        iconNote.text = text
        DataManager.saveContext()
        return  iconNote
    }
    
    static func getNotes() -> [IconNote] {
        let context = DataManager.getContext()
        do {
            return try context.fetch(IconNote.fetchRequest())
        }catch{
            return []
        }
    }
    
}
