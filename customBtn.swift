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
    
    @IBInspectable var a:CGFloat = 0 {didSet{self.layer.cornerRadius = a}}
    
    @IBInspectable var b:CGFloat = 0 {didSet{self.layer.borderWidth = b}}
    
    @IBInspectable var c:UIColor = UIColor.clear {didSet{self.layer.borderColor = c.cgColor}}
}
