//
//  customBtn.swift
//  tabBar App
//
//  Created by Abdalla on 8/3/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable
class customBtnAdvanced: UIButton {
    
    @IBInspectable var cornerRaduis:CGFloat = 0 {didSet{self.layer.cornerRadius = cornerRaduis}}
    
    @IBInspectable var borderWidth:CGFloat = 0 {didSet{self.layer.borderWidth = borderWidth}}
    
    @IBInspectable var borderColor:UIColor = UIColor.clear {didSet{self.layer.borderColor = borderColor.cgColor}}
}
