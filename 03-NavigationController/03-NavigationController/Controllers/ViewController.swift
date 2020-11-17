//
//  ViewController.swift
//  03-NavigationController
//
//  Created by Jermaine Francoeur on 2020-11-12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtData: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ReceiverController {
            let dest = segue.destination as! ReceiverController
            dest.headsOrTailsTrueIsHeads = Bool.random()
            dest.someData = txtData.text ?? " - it's nil - "
        }
    }
    


}

