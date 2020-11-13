//
//  ReceiverController.swift
//  03-NavigationController
//
//  Created by Jermaine Francoeur on 2020-11-12.
//

import UIKit

class ReceiverController: UIViewController {
    var someData = "Hello world"
    
    @IBOutlet weak var lblData: UILabel!
    
    override func viewDidLoad() {
        lblData.text = someData
    }
    
}
