//
//  ViewController.swift
//  projAlert
//
//  Created by Jennifer on 2017/3/19.
//  Copyright © 2017年 Jennifer Ｗu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnClicked(_ sender: UIButton) {
        if (sender.tag==3){
            showAlert(title: "結果", msg: "答對了")
        } else {
            showAlert(title: "結果", msg: "答錯了")
        }
    }
    func showAlert(title:String, msg:String){
       
        let alert = UIAlertController (title: title,  message: msg, preferredStyle: .alert)
        let okaction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okaction)
        self.present(alert, animated: true, completion: nil)

    }

}

