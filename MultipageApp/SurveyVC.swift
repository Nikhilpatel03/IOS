//
//  SurveyVC.swift
//  MultipageApp
//
//  Created by Nikhil Patel on 2022-10-04.
//

import UIKit

class SurveyVC: UIViewController {
    @IBOutlet var ratingLabel: UILabel!
    @IBOutlet var seg: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func ratingGiven(_ sender: UISegmentedControl){
            if seg.selectedSegmentIndex == 0 {
                ratingLabel.text = "Rating: 1 Thanks for your rating!"
            }
            else if seg.selectedSegmentIndex == 1 {
                ratingLabel.text = "Rating: 2 Thanks for your rating!"
            }
            else if seg.selectedSegmentIndex == 2 {
                ratingLabel.text = "Rating: 3 Thanks for your rating!"
            }
            else if seg.selectedSegmentIndex == 3 {
                ratingLabel.text = "Rating: 4 Thanks for your rating!"
            }
            else if seg.selectedSegmentIndex == 4 {
                ratingLabel.text = "Rating: 5 Thanks for your rating!"
            }
      
        
        
    }
    @IBAction func submitBtnPressed() {
        
        //1. Create an alert controller
        let buttonAlert = UIAlertController(title: "Thank you!", message: " You've successfully completed the survey! Thanks for your valuable feedback!", preferredStyle: .alert)
        
        //2. Add an action for the alert to pop up when Submit button pressed
        
        buttonAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        
        self.present(buttonAlert, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
