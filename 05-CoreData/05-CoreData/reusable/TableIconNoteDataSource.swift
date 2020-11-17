
import UIKit

class TableIconNoteDataSource: NSObject, UITableViewDataSource {
    var table: UITableView
    
    init(TargetTable table: UITableView){
        self.table = table
        super.init()
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return IconNote.getNotes().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let note = IconNote.getNotes()[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "IconNoteTemplate", for: indexPath) as! IconNoteCell
        cell.configure(Note: note)
        return cell
    }
}
