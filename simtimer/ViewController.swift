//
//  ViewController.swift
//  simtimer
//
//  Created by D7703_23 on 2018. 4. 9..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var cunt = 0
    @IBOutlet weak var timelabel: UILabel!
    @IBOutlet weak var timeswitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func updateTimer(){
    let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EEE"
        timelabel.text = formatter.string(from: date)
        
    }
    
    
    @IBAction func timeswitch(_ sender: Any) {
        if timeswitch.inOn == true {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }else{
            timer.invalidate()
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

