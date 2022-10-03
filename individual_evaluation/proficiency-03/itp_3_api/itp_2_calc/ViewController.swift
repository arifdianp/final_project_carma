//
//  ViewController.swift
//  itp_2_calc
//
//  Created by Dianprakasa, Arif on 10/24/19.
//  Copyright © 2019 Dianprakasa, Arif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var username = "arifdian";
    var listofal = ["a","b","c","d","e","f","g","h","i","j","k","l","m"];
    
    var numonscreen:Double = 0;
    var prevnum:Double = 0;
    var performath = false;
    var operation = 0;
    
    
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    
    
    @IBOutlet weak var addition: UIButton!
    @IBOutlet weak var substraction: UIButton!
    @IBOutlet weak var multiplication: UIButton!
    @IBOutlet weak var division: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func nums(_ sender: UIButton)
    {
        if performath == true // check if syntax is after mathematical operation
        {
            label.text = String(sender.tag)
            numonscreen = Double(label.text!)!
            performath = false
        }
        else
        {
            label.text = label.text! + String(sender.tag)
            numonscreen = Double(label.text!)!
        }
    }
    
    
    @IBAction func buttons(_ sender: UIButton)
    {
        // if it isn't blank and equal or clear button is not pressed
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            if sender.tag == 12 //tag for divide
            {
                if prevnum != 0
                {
                    if operation == 12 // division
                    {
                        prevnum = prevnum / Double(label.text!)!
                    }
                    else if operation == 13 // multiplication
                    {
                        prevnum = prevnum * Double(label.text!)!
                    }
                    else if operation == 14 // substraction
                    {
                        prevnum = prevnum - Double(label.text!)!
                    }
                    else if operation == 15 // addition
                    {
                        prevnum = prevnum + Double(label.text!)!
                    }
                }
                else
                {
                    prevnum = Double(label.text!)!
                }
                
                label.text = "/";
            }
            else if sender.tag == 13 //tag for multiply
            {
                if prevnum != 0
                {
                    if operation == 12 // division
                    {
                        prevnum = prevnum / Double(label.text!)!
                    }
                    else if operation == 13 // multiplication
                    {
                        prevnum = prevnum * Double(label.text!)!
                    }
                    else if operation == 14 // substraction
                    {
                        prevnum = prevnum - Double(label.text!)!
                    }
                    else if operation == 15 // addition
                    {
                        prevnum = prevnum + Double(label.text!)!
                    }
                }
                else
                {
                    prevnum = Double(label.text!)!
                }
                
                label.text = "x";
            }
            else if sender.tag == 14 // tag for minus
            {
                if prevnum != 0
                {
                    if operation == 12 // division
                    {
                        prevnum = prevnum / Double(label.text!)!
                    }
                    else if operation == 13 // multiplication
                    {
                        prevnum = prevnum * Double(label.text!)!
                    }
                    else if operation == 14 // substraction
                    {
                        prevnum = prevnum - Double(label.text!)!
                    }
                    else if operation == 15 // addition
                    {
                        prevnum = prevnum + Double(label.text!)!
                    }
                }
                else
                {
                    prevnum = Double(label.text!)!
                }
                
                label.text = "-";
            }
            else if sender.tag == 15 // tag for plus
            {
                if prevnum != 0
                {
                    if operation == 12 // division
                    {
                        prevnum = prevnum / Double(label.text!)!
                    }
                    else if operation == 13 // multiplication
                    {
                        prevnum = prevnum * Double(label.text!)!
                    }
                    else if operation == 14 // substraction
                    {
                        prevnum = prevnum - Double(label.text!)!
                    }
                    else if operation == 15 // addition
                    {
                        prevnum = prevnum + Double(label.text!)!
                    }
                }
                else
                {
                    prevnum = Double(label.text!)!
                }
                
                label.text = "+";
            }
            
            operation = sender.tag
            performath = true
        }
        else if label.text != "" && sender.tag == 16
        {
            if operation == 12 // division
            {
                label.text = String(prevnum / numonscreen)
                numonscreen = prevnum / numonscreen
                prevnum = 0
            }
            else if operation == 13  // multiplication
            {
                label.text = String(prevnum * numonscreen)
                numonscreen = prevnum * numonscreen
                prevnum = 0
            }
            else if operation == 14  // substraction
            {
                label.text = String(prevnum - numonscreen)
                numonscreen = prevnum - numonscreen
                prevnum = 0
            }
            else if operation == 15   // addition
            {
                label.text = String(prevnum + numonscreen)
                numonscreen = prevnum + numonscreen
                prevnum = 0
            }
        }
        else if sender.tag == 11
        {
            label.text = "";
            prevnum = 0;
            numonscreen = 0;
            operation = 0;
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if username.count % 2 == 0
        {
            one.isHidden = true;
            three.isHidden = true;
            five.isHidden = true;
            seven.isHidden = true;
            nine.isHidden = true;
        }
        
        for x in listofal
        {
            if username.prefix(1) == x
            {
                substraction.isHidden = true;
                multiplication.isHidden = true;
            }
        }
    }


}

