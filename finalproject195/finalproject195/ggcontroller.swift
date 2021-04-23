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

    
    @IBOutlet weak var targetGPA: UITextField!
    
    var cumulative: Float = 0
    var courses = 0
    var totcourses = 0
    
    @IBAction func calc(_ sender: Any) {
//        print("btn clicked")
//        print(aa.text!)
//        if var aatext = aa.text, aatext.isEmpty {
//            aatext = aa.text!
//            cumulative += Int(aatext)!
//        } else {
//           print("is empty")
//        }
        //print(cumulative)
        print(aa.text ?? "")
        if aa.text == ""{
            print("null")
        } else {
            print("not nil")
        }
        
        for i in 1...11
            {
                let aa = self.view.viewWithTag(i) as! UITextField

                if aa.text == ""{
                    
                } else {
                   var grade: Float = 0
                    if i == 1{
                        grade = 4
                    } else if i == 2{
                        grade = 3.7
                    } else if i == 3{
                        grade = 3.3
                    } else if i == 4{
                        grade = 3.0
                    } else if i == 5{
                        grade = 2.7
                    } else if i == 6{
                        grade = 2.3
                    } else if i == 7{
                        grade = 2.0
                    } else if i == 8{
                        grade = 1.7
                    }else if i == 9{
                        grade = 1.3
                    } else if i == 10{
                        grade = 1.0
                    } else if i == 11{
                        grade = 0
                    }
                    
                    let num = Int(aa.text!)
                    cumulative += Float(num!)*grade
                    courses += num!
                    totcourses += num!
                }
            }
        for i in 12...17{
                let aa = self.view.viewWithTag(i) as! UITextField

                if aa.text == ""{
                    
                } else {
                    let bb = self.view.viewWithTag(i+10) as! UITextField
                    if bb.text == ""{
                        totcourses+=1
                    }
                    else{
                        print(bb.text!)
                    let num = Int(bb.text!)
                        cumulative += Float(num!)
                        courses += 1
                        totcourses += 1
                    }
                }
        }
        
        if targetGPA.text == ""{
            
        } else{
            let tobeCalc = totcourses - courses
            let target: Float = Float(targetGPA.text!)!
            let targetTotal: Float = Float(target * Float(totcourses))
            let targetScore = (targetTotal - cumulative)/Float(tobeCalc)
            if targetScore > 4.0{
                let aa = self.view.viewWithTag(30) as! UITextField
                aa.text = "Please adjust your goal"
            } else{
                for i in 12...17{
                    let aa = self.view.viewWithTag(i) as! UITextField

                    if aa.text == ""{
                        
                    } else{
                        let bb = self.view.viewWithTag(i+10) as! UITextField
                        if bb.text == ""{
                            bb.text = String(targetScore)
                        }
                    }
                }
            }
        }
        
    }
    
}
