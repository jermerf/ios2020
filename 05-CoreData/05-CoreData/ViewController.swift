//
//  ViewController.swift
//  05-CoreData
//
//  Created by Jermaine Francoeur on 2020-11-17.
//

import UIKit

class ViewController: UIViewController {
    let icons:[String] = ["sparkles","message","gift","headphones","atom"]
    var currentIcon: String = "sparkles"
    var tableDataSource: TableIconNoteDataSource?

    override func viewDidLoad() {
        tableDataSource = TableIconNoteDataSource(TargetTable: tableIconNotes)
    }

    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var txtNote: UITextField!
    
    @IBOutlet weak var tableIconNotes: UITableView!
    
    @IBAction func addNote(_ sender: Any) {
        let note = IconNote.create(IconString: currentIcon, NoteText: txtNote.text)
        txtNote.text = ""
        tableIconNotes.reloadData()
    }
    
}


extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
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
