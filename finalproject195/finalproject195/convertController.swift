//
//  convertController.swift
//  finalproject195
//
//  Created by Tia Xie on 4/2/21.
//

import UIKit

class convertController: UIViewController {
    
    @IBOutlet weak var userNum: UITextField!
    
    
    @IBOutlet weak var b2: UILabel!
    
    @IBOutlet weak var b10: UILabel!
    
    @IBOutlet weak var b16: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    var segmentNum = 0
   
    @IBAction func didChangeSegment(_ sender: UISegmentedControl){
        segmentNum = sender.selectedSegmentIndex
    }
    
    @IBAction func convertBtn(_ sender: Any) {
        print("btn clicked")
        print(segmentNum)
        if segmentNum == 0 {
        var userInput = userNum.text!
        var twobase = userInput
        var tenbase = Int(twobase, radix: 2)!
        var hexbase =  String(Int(twobase, radix: 2)!, radix: 16)
        print(twobase)
        print(tenbase)
        print(hexbase)
        b2.text = twobase
        b10.text = String(tenbase)
            b16.text = hexbase}
        if segmentNum == 1{
            var userInput = userNum.text!
            var tenbase = Int(userInput)
            let twobase = String(tenbase!, radix: 2)
            let hexbase = String(tenbase!, radix: 16)
            b2.text = twobase
            b10.text = String(tenbase!)
            b16.text = hexbase
        }
        if segmentNum == 2{
            var userInput = userNum.text!
            let hexbase = userInput
            let tenbase = Int(hexbase, radix: 16)!
            let twobase = String(Int(hexbase, radix: 16)!, radix: 2)
            b2.text = twobase
            b10.text = String(tenbase)
            b16.text = hexbase
        }
    }
    
    
    
    
    
}

