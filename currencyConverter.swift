//
//  currencyConverter.swift
//  tabBar App
//
//  Created by Abdalla on 8/5/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class currencyConverter: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    var myCurrency:[String] = []
    var myValues:[Double] = []
    var activeCurrency:Double = 0
    
    // my objects
    
    @IBOutlet weak var pickerV: UIPickerView!
    @IBOutlet weak var textFInput: UITextField!
    @IBOutlet weak var lblOutput: UILabel!
    
    
    //Creating of picker View
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myCurrency.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        activeCurrency = myValues[row]
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myCurrency[row]
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        convert()
    }
    
    // Button Function
    
    @IBAction func convertBtn(_ sender: Any) {
        if (textFInput.text != "")
        {
            lblOutput.text = "This Your Money After converting to Currency you selected, thank u for using \(String(Double(textFInput.text!)! * activeCurrency))"
        }
    }
    
    
    // making function for getting Data
    
    func convert() {
        let website = URL(string: "http://data.fixer.io/api/latest?access_key=f0e7bee8a95a4f1593fe6a6006154584&format=1")
        let task = URLSession.shared.dataTask(with: website!) {(data, response , err)
            in
            
            if err != nil{
                print("Failed")
            }
            else
            {
                if let myContact = data
                {
                    do
                    {
                        let json = try JSONSerialization.jsonObject(with: myContact, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        
                        //print(json)
                        if let rates = json["rates"] as? NSDictionary
                        {
                            for(key,value) in rates
                            {
                                self.myCurrency.append((key as? String)!)
                                self.myValues.append((value as? Double)!)
                            }
                        }
                    }
                    catch
                    {
                    }
                }
                self.pickerV.reloadAllComponents()
            }
        }
        task.resume()
    }

}
