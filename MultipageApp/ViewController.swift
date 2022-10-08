//
//  ViewController.swift
//  MultipageApp
//
//  Created by Nikhil Patel on 2022-09-29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var emailField: UITextField!
    @IBOutlet var addressField: UITextField!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var genderField: UITextField!
    @IBOutlet var dateOfBirth: UIDatePicker!
    
    var currentAge: Int = 0
    var currentGender: String = ""
    
    @IBAction func submitBtnPressed() {
        
        //1. Create an alert controller
        let buttonAlert = UIAlertController(title: "Thank you!", message: "\(nameField.text!) you've successfully completed the form! You are a \(genderField.text!) and you are \(currentAge) years old. You were born on \(dateOfBirth.date)", preferredStyle: .alert)
        
        //2. Add an action for the alert to pop up when Submit button pressed
        
        buttonAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        
        self.present(buttonAlert, animated: true, completion: nil)
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        //1. When the slider value is changed, we change the age label text
        currentAge = Int(sender.value)
        
        ageLabel.text = "\(currentAge)"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


