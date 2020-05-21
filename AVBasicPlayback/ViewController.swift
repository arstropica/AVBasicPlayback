//
//  ViewController.swift
//  AVBasicPlayback
//
//  Created by Admin on 5/21/20.
//  Copyright © 2020 ArsTropica LLC. All rights reserved.
//

import AVKit
import AVFoundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        autoPlayVideo()
    }
    
    func autoPlayVideo() {
        guard let url = URL(string: UIApplication.mediaPlaylistUrl) else {
            return
        }
        playVideo(url: url)
    }

    @IBAction func onPlayButton(_ sender: Any) {
        autoPlayVideo()
    }

    func playVideo(url: URL) {
        // Create an AVPlayer, passing it the HTTP Live Streaming URL
        let player = AVPlayer(url: url)
        
        // Create an new AVPlayerViewController and pass it as a reference to the player
        let controller = AVPlayerViewController()
        controller.player = player
        
        // Modally present the player and call the player's play() method when complete.
        present(controller, animated: true) {
            player.play()
        }
    }
    
}

