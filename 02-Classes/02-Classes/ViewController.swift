//
//  ViewController.swift
//  02-Classes
//
//  Created by Jermaine Francoeur on 2020-11-10.
//

import UIKit


class ViewController: UIViewController{
    
    @IBOutlet weak var txtFood: UITextField!
    @IBOutlet weak var lblSelected: UILabel!
    @IBOutlet weak var pickFood: UIPickerView!
    var foodList: [String] = ["Pizza","Poutine","Pop"]
    var toppingList: [String] = ["Donair Sauce","Gravy","Marinara Sauce","Ketchup"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickFood.dataSource = self
        pickFood.delegate = self
    }
    
    @IBAction func addTapped(_ sender: Any) {
        if let food = txtFood.text{
            foodList.append(food)
            txtFood.text = ""
            pickFood.reloadComponent(0)
        }
    }

}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return foodList.count
        }else{
            return toppingList.count
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return foodList[row]
        }else{
            return toppingList[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            let food = foodList[row]
            lblSelected.text = "Looks like we're having \(food) tonight!"
        }else{
            let topping = toppingList[row]
            lblSelected.text = "Hey Tony! Fetch me some \(topping)"
        }
    }
    
    
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 












