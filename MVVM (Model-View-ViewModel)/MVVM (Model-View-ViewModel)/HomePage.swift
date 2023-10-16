//
//  ViewController.swift
//  MVVM (Model-View-ViewModel)
//
//  Created by Ahmet Erkut on 17.10.2023.
//

import UIKit

class HomePage: UIViewController {

    @IBOutlet weak var numberTwoTextField: UITextField!
    @IBOutlet weak var numberOneTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    let homePageVM = HomePageViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = homePageVM.result
    }

    @IBAction func sumButton(_ sender: Any) {
        if let no1 = numberOneTextField.text, let no2 = numberTwoTextField.text {
            homePageVM.sum(gotNumberOne: no1, gotNumberTwo: no2)
            resultLabel.text = homePageVM.result
        }
    }

    @IBAction func multipleButton(_ sender: Any) {
        if let no1 = numberOneTextField.text, let no2 = numberTwoTextField.text {
            homePageVM.multi(gotNumberOne: no1, gotNumberTwo: no2)
            resultLabel.text = homePageVM.result
        }
    }
    
}

