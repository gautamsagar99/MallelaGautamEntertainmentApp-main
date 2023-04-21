//
//  PlayMusicVC.swift
//  MallelaGautamEntertainmentApp
//
//  Created by Mallela,Gautam Sagar on 4/19/23.
//

import UIKit
import YouTubeiOSPlayerHelper



class PlayMusicVC: UIViewController {
    

    
    @IBOutlet weak var videoPlayerView: YTPlayerView!
    
    var videoId = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("printing in player \(videoId)")
        videoPlayerView.load(withVideoId: self.videoId)
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
