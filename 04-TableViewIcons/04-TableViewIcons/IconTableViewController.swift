//
//  ViewController.swift
//  04-TableViewIcons
//
//  Created by Jermaine Francoeur on 2020-11-13.
//

import UIKit

class IconTableViewController: UIViewController {
    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var txtNote: UITextField!
    @IBOutlet weak var tableIconNotes: UITableView!
    
    let icons:[String] = ["sparkles","message","gift","headphones","atom", "square.and.pencil"]
    var currentIcon: String = "sparkles"
    var iconNotes: [IconNote] = [IconNote(IconString: "gift", NoteText: "Hello world")]
    
    
    @IBAction func addIconNoteTouchUpInside(_ sender: Any) {
        iconNotes.append(IconNote(IconString: currentIcon, NoteText: txtNote.text))
        txtNote.text = ""
        tableIconNotes.reloadData()
    }
}

extension IconTableViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iconNotes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let note = iconNotes[indexPath.row]
        let cell = tableIconNotes.dequeueReusableCell(withIdentifier: "IconNoteTemplate", for: indexPath) as! IconNoteCell
        cell.configure(Note: note)
        return cell
    }


}



extension IconTableViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    
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


