//Helloworld
//  HomeViewController.swift
//  IzaKamakuraApp super
//
//  Created by Hide I on 2026/04/17.
//

import UIKit
import AVKit
import AVFoundation

class HomeViewController: UIViewController {

    var player: AVPlayer?
    var playerLayer: AVPlayerLayer?

    @IBOutlet weak var videoView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let path = Bundle.main.path(forResource: "home_movie", ofType: "MOV") else { return }

        let url = URL(fileURLWithPath: path)
        player = AVPlayer(url: url)

        playerLayer = AVPlayerLayer(player: player)
        playerLayer?.frame = videoView.bounds
        playerLayer?.videoGravity = .resizeAspectFill

        videoView.layer.addSublayer(playerLayer!)

        player?.play()
        player?.isMuted = true

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(loopVideo),
            name: .AVPlayerItemDidPlayToEndTime,
            object: player?.currentItem
        )
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        playerLayer?.frame = videoView.bounds
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        player?.pause()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        player?.play()
    }

    @objc func loopVideo() {
        player?.seek(to: .zero)
        player?.play()
    }
}
