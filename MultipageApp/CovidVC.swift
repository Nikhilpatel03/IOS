//
//  LocationVC.swift
//  MultipageApp
//
//  Created by Nikhil Patel on 2022-10-04.
//

import UIKit

class CovidVC: UIViewController {
    @IBOutlet var measuresTextView: UITextView!
    @IBOutlet var measuresImage: UIImageView!
    
    @IBOutlet var vaccineTextView: UITextView!
    @IBOutlet var vaccineImage: UIImageView!
    
    @IBAction func measureButtonPressed(){
        if measuresImage.isHidden == false{
            measuresImage.isHidden = true
        }
        else{
            measuresImage.isHidden = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func vaccineButtonPressed(){
        if vaccineImage.isHidden == false{
            vaccineImage.isHidden = true
        }
        else{
            vaccineImage.isHidden = false
        }
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
