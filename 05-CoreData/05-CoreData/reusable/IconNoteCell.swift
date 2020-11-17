import UIKit

class IconNoteCell: UITableViewCell{
    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var lblText: UILabel!
    
    func configure(Note note:IconNote){
        imgIcon.image = UIImage(systemName: note.icon ?? "sparkles")
        lblText.text = note.text
    }

}
