import UIKit

class MyOtherViewController: UIViewController {
    
    @IBOutlet weak var lblMyName: UILabel!
    @IBOutlet weak var txtName: UITextField!
    
    
    @IBAction func btnMoveTextTapped(_ sender: Any) {
        lblMyName.text = txtName.text
    }
}
