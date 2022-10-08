//
//  CovidVidVC.swift
//  MultipageApp
//
//  Created by Nikhil Patel on 2022-10-06.
//

import UIKit
import AVFoundation
import AVKit

class CovidVidVC: UIViewController {
    @IBOutlet weak var videoPreviewLayer1: UIView!
    @IBOutlet weak var videoPreviewLayer2: UIView!
    @IBOutlet weak var videoPreviewLayer3: UIView!
    @IBOutlet weak var videoPreviewLayer4: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playVideo("1","mp4",videoPreviewLayer1)
        playVideo("2","mp4",videoPreviewLayer2)
        playVideo("3","mp4",videoPreviewLayer3)
        playVideo("4","mp4",videoPreviewLayer4)
        
    }
     func playVideo(_ video:String, _ type: String, _ layer: UIView) {
        guard let path = Bundle.main.path(forResource: video, ofType: type)
        else {
                print("video not found")
                return
            }
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            let playerController = AVPlayerViewController()
            playerController.player = player
        playerController.view.frame = layer.frame
        self.addChild(playerController)
        self.view.addSubview(playerController.view)
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

