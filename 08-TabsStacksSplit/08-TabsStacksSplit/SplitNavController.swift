//
//  SplitNavController.swift
//  08-TabsStacksSplit
//
//  Created by Jermaine Francoeur on 2020-11-24.
//

import UIKit

class SplitNavController: UISplitViewController {
    var mainViewController: ViewController?
    
    func onclick() -> Void {
        mainViewController?.color = UIColor.blue
    }
    
}
