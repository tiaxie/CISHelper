//
//  ggcontroller.swift
//  finalproject195
//
//  Created by Tia Xie on 4/23/21.
//
import UIKit

class ggcontroller: UIViewController{
    
    @IBOutlet weak var aa: UITextField!
    
    
    @IBOutlet weak var am: UITextField!
    
    
    @IBOutlet weak var bp: UITextField!
    
    
    @IBOutlet weak var b: UITextField!
    
    
    @IBOutlet weak var bm: UITextField!
    
    
    @IBOutlet weak var cp: UITextField!
    
    
    @IBOutlet weak var c: UITextField!
    
    
    @IBOutlet weak var cm: UITextField!
    
    
    @IBOutlet weak var dp: UITextField!
    
    
    @IBOutlet weak var d: UITextField!
    
    
    @IBOutlet weak var f: UITextField!
    
    
   
    @IBOutlet weak var c1grade: UITextField!
    
    @IBOutlet weak var c2grade: UITextField!
    
    @IBOutlet weak var c3grade: UITextField!
    
    
    @IBOutlet weak var c4grade: UITextField!

    @IBOutlet weak var c5grade: UITextField!
    
    
    @IBOutlet weak var c6grade: UITextField!

    
    var cumulative = 0
    
    @IBAction func calc(_ sender: Any) {
        print("btn clicked")
        
        if let aatext = aa.text, aatext.isEmpty {
            cumulative += Int(aatext)!
        } else {
           // myTextField is Empty
        }
        print(cumulative)
    }
    
}
