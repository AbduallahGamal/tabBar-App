//
//  webView.swift
//  tabBar App
//
//  Created by Abdalla on 8/4/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class webView: UIViewController {

    @IBOutlet weak var webV: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let website = URL(string: "https://www.google.com.eg/")
        webV.loadRequest(URLRequest(url: website!))
    }
}
