//
//  ViewController.swift
//  Firstapp
//
//  Created by Dianprakasa, Arif on 10/2/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var namefield: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var timedisplay: UILabel!
    @IBOutlet weak var goodmorning: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let date = Date()   
        let calendar = Calendar.current
		
		let year = calendar.component(.year, from: date)
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        let second = calendar.component(.second, from: date)
        
        var h = ""
        var m = ""
        var s = ""
        
        print("\(hour):\(minute):\(second)")
        print("\(day).\(month).\(year)")
		
        
        if minute < 10
        {
            m = "0" + String(minute)

        }
        else
        {
            m = String(minute)
        }
            
        if hour < 10
        {
            h = "0" + String(hour)
        }
        else
        {
            h = String(hour)
        }

        if second < 10
        {
            s = "0" + String(second)
        }
        else
        {
            s = String(second)
        }
        
        timedisplay.text = h + ":" + m + ":" + s
        
        if (hour >= 5 && minute >= 45) || (hour < 12)
        {
            goodmorning.text = "Good Morning!"
        }
        else if (hour >= 12) || (hour < 18)
        {
            goodmorning.text = "Good Afternoon!"
        }
        else
        {
            goodmorning.text = "Good Evening!"
        }
    }


}

