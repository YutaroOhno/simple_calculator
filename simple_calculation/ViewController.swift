//
//  ViewController.swift
//  simple_calculation
//
//  Created by 大野　佑太郎 on 2016/12/23.
//  Copyright © 2016年 yutaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var tasu:String? = nil
    var hiku:String? =  nil
    var waru:String? = nil
    var kakeru:String? = nil
    
    
    @IBOutlet weak var answer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func numberTapped(_ sender: UIButton) {
        if answer.text == "0" && sender.currentTitle == "0" {
        }else{
            if answer.text == "0" {
                answer.text! = sender.currentTitle!
            }else{
                    answer.text! += sender.currentTitle!
            }
        }
    }

    @IBAction func tapClearButton(_ sender: UIButton) {
        answer.text = "0"
    }
    @IBAction func addMinusSymbol(_ sender: UIButton) {
            answer.text =  String(-1 * Int(answer.text!)!)
    }
    @IBAction func tapDevidedButton(_ sender: UIButton) {
        waru = answer.text!
        answer.text = ""
    }
    @IBAction func tapPlusButton(_ sender: UIButton) {
        tasu = answer.text!
        answer.text = ""
        
    }
    @IBAction func tapTimesButton(_ sender: UIButton) {
        kakeru = answer.text!
        answer.text = ""
    }
    @IBAction func tapMinusButton(_ sender: UIButton) {
        hiku = answer.text!
        answer.text = ""
    }
    
    @IBAction func tapEqualButton(_ sender: UIButton) {

        if tasu != nil {
            answer.text = String(Int(answer.text!)! + Int(tasu!)!)
            tasu = nil
        }else if hiku != nil {
            answer.text = String(Int(hiku!)! - Int(answer.text!)!)
            hiku = nil
        }else if waru != nil {
            answer.text = String(Int(waru!)! / Int(answer.text!)!)
            waru = nil
        }else if kakeru != nil {
            answer.text = String(Int(kakeru!)! * Int(answer.text!)!)
            kakeru = nil
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

