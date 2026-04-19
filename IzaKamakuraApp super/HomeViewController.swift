//import UIKit
//import AVKit
//import AVFoundation

//class HomeViewController: UIViewController {

//  var player: AVPlayer?
//    var playerLayer: AVPlayerLayer?

//  @IBOutlet weak var videoView: UIView!
//  @IBOutlet weak var nextButton: UIButton!

//  override func viewDidLoad() {
//      super.viewDidLoad()

//      guard let path = Bundle.main.path(forResource: "Top動画", ofType: "MOV") else { return }

//      let url = URL(fileURLWithPath: path)
//      player = AVPlayer(url: url)

//      playerLayer = AVPlayerLayer(player: player)
//        playerLayer?.frame = videoView.bounds
//      playerLayer?.videoGravity = .resizeAspectFill
//      videoView.layer.addSublayer(playerLayer!)
        //videoView.clipsToBounds = true
        //videoView.layer.addSublayer(playerLayer!)
        //view.sendSubviewToBack(videoView)

        //view.bringSubviewToFront(nextButton)
        //view.bringSubviewToFront(titleLabel)
        //view.bringSubviewToFront(subtitleLabel)
        
//        player?.play()
//      player?.isMuted = true

//        NotificationCenter.default.addObserver(
//          self,
//          selector: #selector(loopVideo),
//          name: .AVPlayerItemDidPlayToEndTime,
//          object: player?.currentItem
//      )
//  }

//  override func viewDidAppear(_ animated: Bool) {
//      super.viewDidAppear(animated)
//      self.view.bringSubviewToFront(nextButton) // ←ここ
//  }

//  @objc func loopVideo() {
//      player?.seek(to: .zero)
//      player?.play()
//  }
//}
