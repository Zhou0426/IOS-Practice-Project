//
//  ViewController.swift
//  计时器
//
//  Created by zhoushuai on 17/8/18.
//  Copyright © 2017年 zhoushuai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var result: Double = 0.0
    @IBOutlet weak var resultLabel: UITextView!
    var timer: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startFunction(_ sender: UIButton) {
        if timer != nil {
            return
        }
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.calcResult), userInfo: nil, repeats: true)
    }

    @IBAction func endFunction(_ sender: UIButton) {
        timer?.invalidate()
        timer = nil
    }
    
    func calcResult() {
        result += 0.1
        resultLabel.text = String(format: "%.1f", result)
    }
    
    @IBAction func clear() {
        timer?.invalidate()
        timer = nil
        result = 0.0
        resultLabel.text = String(format: "%.1f", result)
    }
}

