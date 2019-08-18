//
//  login.swift
//  tabBar App
//
//  Created by Abdalla on 8/6/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit
import FirebaseAuth

class login: UIViewController {

    @IBOutlet weak var segmentItem: UISegmentedControl!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBAction func signActionBtn(_ sender: Any) {
        
        if textFieldEmail != nil && textFieldPassword != nil
        {
            if segmentItem.selectedSegmentIndex == 0
            {
                Auth.auth().signIn(withEmail: textFieldEmail.text!, password: textFieldPassword.text!, completion: { (person, err) in
                    
                    if person != nil
                    {
                        print("Done")
                    }
                    else
                    {
                        if let myError = err?.localizedDescription
                        {
                            print(myError)
                        }
                        else
                        {
                            print("Error")
                        }
                    }
                    })
                }
              }
            else
            {
                Auth.auth().createUser(withEmail:  textFieldEmail.text!, password: textFieldPassword.text!, completion: { (person, err) in
                    
                    if person != nil
                    {
                        print("Done")
                    }
                    else
                    {
                        if let myError = err?.localizedDescription
                        {
                            print(myError)
                        }
                        else
                        {
                            print("Error")
                        }
                    }
                })
            }
        }
}
