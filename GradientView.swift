//
//  GradientView.swift
//  tabBar App
//
//  Created by Abdalla on 8/2/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable
class gradientView: UIView {
    
    @IBInspectable var firstColor:UIColor = UIColor.clear{didSet{VD()}}
    @IBInspectable var secondColor:UIColor = UIColor.clear{didSet{VD()}}
    
    override class var layerClass:AnyClass{
        get{return CAGradientLayer.self}
    }
    
    func VD(){
        let lay = self.layer as! CAGradientLayer
        lay.colors = [firstColor.cgColor, secondColor.cgColor]
    }
}
