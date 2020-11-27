//
//  ViewController.swift
//  07-GesturesAndCoco
//
//  Created by Jermaine Francoeur on 2020-11-23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgTarget: UIImageView!
    
    var currentTransform: CGAffineTransform?
    
    override func viewDidLoad() {
        currentTransform = imgTarget.transform
    }
    
    @IBAction func zooming(_ sender: UIPinchGestureRecognizer) {
        if sender.state == .ended{
            currentTransform = imgTarget.transform
        }else{
            imgTarget.transform = currentTransform!.scaledBy(x: sender.scale, y: sender.scale)
        }
    }
    @IBAction func rotating(_ sender: UIRotationGestureRecognizer) {
        if sender.state == .ended{
            currentTransform = imgTarget.transform
        }else{
            imgTarget.transform = currentTransform!.rotated(by: sender.rotation)
        }

    }
}

