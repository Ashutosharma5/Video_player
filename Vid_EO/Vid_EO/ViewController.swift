//
//  ViewController.swift
//  Vid_EO
//
//  Created by Ashutosh Sharma on 26/03/2024.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
    private func playVideo(){
        guard let
                path=Bundle.main.path(forResource:"test1", ofType: "mov") else {
            debugPrint("test.mp4 not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true){player.play()}
    }

}

