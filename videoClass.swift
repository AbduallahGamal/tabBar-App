//
//  videoClass.swift
//  tabBar App
//
//  Created by Abdalla on 8/3/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit
import AVKit

class videoClass: UIViewController {

    @IBAction func play(_ sender: Any) {
        
        if let path = Bundle.main.path(forResource: "sss", ofType : "mov"){
            
            let vedio = AVPlayer(url: URL(fileURLWithPath: path))
            let vp = AVPlayerViewController()
            vp.player = vedio
            
            present(vp, animated: true, completion: {vedio.play()})
        }
        
        
        
    }

}
