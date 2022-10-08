//
//  AboutusVCViewController.swift
//  MultipageApp
//
//  Created by Nikhil Patel on 2022-10-04.
//

import UIKit

class AboutusVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func instaPressed(_ sender: UIButton )
    {
        UIApplication.shared.open(URL(string:"https://www.instagram.com/nyctophiliacccc/")! as URL, options: [:], completionHandler: nil)
    
    }
    @IBAction func linkedinPressed(_ sender: UIButton )
    {
        UIApplication.shared.open(URL(string:"https://www.linkedin.com/in/nikhil-patel-6ab48b228/")! as URL, options: [:], completionHandler: nil)
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
