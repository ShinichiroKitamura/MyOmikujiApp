//
//  ViewController.swift
//  MyOmikujiApp
//
//  Created by 北村槙一朗 on 2017/06/10.
//  Copyright © 2017年 北村槙一朗. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBAction func getOmikuji(_ sender: Any) {
        // 0 - n
        // arc4random_uniform(n + 1)
        let result = ["大吉","吉","中吉","凶","大凶"]
        
        let random = arc4random_uniform(UInt32(result.count))
        
        self.myLabel.text = result[Int(random)]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //myLabel.layer.borderColor = UIColor.orange.cgColor
        //myLabel.layer.borderWidth = 5
        myLabel.layer.cornerRadius = myLabel.bounds.width / 2
        myLabel.layer.masksToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

