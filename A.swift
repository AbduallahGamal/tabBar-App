//
//  A.swift
//  tabBar App
//
//  Created by Abdalla on 8/2/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit
import AVFoundation

class A: UIViewController {
    
    var player = AVAudioPlayer()
    
    @IBOutlet weak var sll: UISlider!
    
    @IBAction func play(_ sender: Any) {

        let path = Bundle.main.path(forResource: "sss", ofType : "mp3")!
        let url = URL(fileURLWithPath : path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
            
        } catch {
            
            print ("There is an issue with this code!")
            
        }
        
    }
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func mute(_ sender: Any) {
        player.volume = 0
    }
    
    @IBAction func close(_ sender: Any) {
        player.stop()
    }
    
    @IBAction func sl(_ sender: Any) {
        player.volume = sll.value
    }
    

}
