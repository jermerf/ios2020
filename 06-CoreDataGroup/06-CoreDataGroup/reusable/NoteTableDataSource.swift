//
//  NoteTableDataSource.swift
//  06-CoreDataGroup
//
//  Created by Jermaine Francoeur on 2020-11-18.
//

import UIKit
import CoreData


class NoteTableDataSource: NSObject, UITableViewDataSource {
    var table: UITableView
    var group: NoteGroup
    var notes:[IconNote] = []
    
    init(TargetTable table: UITableView, NoteGroup group: NoteGroup){
        self.table = table
        self.group = group
        super.init()
        table.dataSource = self
    }
    
    func getNotes() -> [IconNote]{
        let context = Data.getContext()
        do{
            let fetchRequest = NSFetchRequest<IconNote>(entityName: "IconNote")
            fetchRequest.predicate = NSPredicate(format: "group == %@", group)
            return try context.fetch(fetchRequest)
        }catch{
            print(error)
            return []
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getNotes().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let note = getNotes()[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "IconNoteTemplate", for: indexPath) as! IconNoteCell
        cell.configure(Note: note)
        return cell
    }
}
