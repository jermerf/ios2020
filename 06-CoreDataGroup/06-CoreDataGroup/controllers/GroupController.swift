//
//  GroupController.swift
//  06-CoreDataGroup
//
//  Created by Jermaine Francoeur on 2020-11-18.
//

import UIKit

class GroupController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var groups: [NoteGroup] = []
    var selected: NoteGroup?
    
    @IBOutlet weak var txtGroupName: UITextField!
    @IBOutlet weak var groupTable: UITableView!
    
    override func viewDidLoad() {
        groups = getGroups()
        groupTable.reloadData()
        
        print("-- DATABASE PATH --")
        let dirPaths = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true)
        ///Users/jermainefrancoeur/Library/Developer/CoreSimulator/Devices/7DBDC5CF-97B2-4841-A368-5F67E9314048/data/Containers/Data/Application/D539443B-379F-47F5-BA5B-FF812123F7AA/Documents
        
        print(dirPaths[0])
    }
    
    @IBAction func addGroup(_ sender: Any) {
        let group = NoteGroup(context: Data.getContext())
        if let title = txtGroupName.text {
            if title == "" {
                return
            }
            group.title = txtGroupName.text
            txtGroupName.text = ""
            Data.save()
            groups = getGroups()
            groupTable.reloadData()
        }else{
            return
        }
    }
    
    func getGroups() -> [NoteGroup] {
        let context = Data.getContext()
        do {
            return try context.fetch(NoteGroup.fetchRequest())
        }catch{
            print(error)
            return []
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getGroups().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let group = groups[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell") as! GroupCell
        cell.label.text = group.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selected = groups[indexPath.row]
        performSegue(withIdentifier: "noteBrowser", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is NoteViewController {
            let dest = segue.destination as! NoteViewController
            dest.group = selected
        }
    }
}

class GroupCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
}

    
    

