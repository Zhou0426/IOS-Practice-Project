//
//  ViewController.swift
//  修改字体
//
//  Created by zhoushuai on 17/8/18.
//  Copyright © 2017年 zhoushuai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let fonts = ["SYZK-CJSxiaosati", "QisiAaWanWan"]
    @IBOutlet weak var textLabel: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeFont(_ sender: UIButton) {
        let currentFontName = textLabel.font?.fontName
        switch currentFontName {
        case fonts[0]?:
            textLabel.font = UIFont.init(name: fonts[1], size: 18)
        case fonts[1]?:
            textLabel.font = UIFont.init(name: fonts[0], size: 18)
        default:
            textLabel.font = UIFont.init(name: fonts[0], size: 18)
        }
    }

}

