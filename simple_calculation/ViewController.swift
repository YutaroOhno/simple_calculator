//
//  ViewController.swift
//  simple_calculation
//
//  Created by 大野　佑太郎 on 2016/12/23.
//  Copyright © 2016年 yutaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

