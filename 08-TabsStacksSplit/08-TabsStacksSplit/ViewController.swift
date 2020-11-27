//
//  ViewController.swift
//  08-TabsStacksSplit
//
//  Created by Jermaine Francoeur on 2020-11-24.
//

import UIKit

class ViewController: UIViewController {
    var color = UIColor.red

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showSplitView(_ sender: Any) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let splitNavController = mainStoryboard.instantiateViewController(withIdentifier: "splitNavController") as! SplitNavController
        
        splitNavController.mainViewController = self
        UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController = splitNavController
        
    }
    
}

