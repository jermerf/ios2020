//
//  ViewController.swift
//  06-CoreDataGroup
//
//  Created by Jermaine Francoeur on 2020-11-18.
//

import UIKit

class NoteViewController: UIViewController {

    let dataContext = Data.getContext()
    var group: NoteGroup?
    let icons:[String] = ["sparkles","message","gift","headphones","atom"]
    
    
    @IBOutlet weak var lblGroupTitle: UILabel!
    var currentIcon: String = "sparkles"
    var tableDataSource: NoteTableDataSource?
    
    override func viewDidLoad() {
        if let g = group {
            lblGroupTitle.text = g.title
            tableDataSource = NoteTableDataSource(TargetTable: tableIconNotes, NoteGroup: g)
        }else{
            dismiss(animated: true, completion: nil)
        }
        
    }

    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var txtNote: UITextField!
    
    @IBOutlet weak var tableIconNotes: UITableView!
    
    @IBAction func addNote(_ sender: Any) {
        let note = IconNote(context: dataContext)
        note.icon = currentIcon
        note.note = txtNote.text
        note.group = group
        Data.save()
        txtNote.text = ""
        tableIconNotes.reloadData()
    }
    
}


extension NoteViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return icons.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return icons[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currentIcon = icons[row]
        imgIcon.image = UIImage(systemName: currentIcon)
    }
    
}
