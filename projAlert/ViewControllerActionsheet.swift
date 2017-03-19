//
//  ViewControllerActionsheet.swift
//  projAlert
//
//  Created by Jennifer on 2017/3/19.
//  Copyright © 2017年 Jennifer Ｗu. All rights reserved.
//

import UIKit

class ViewControllerActionsheet: UIViewController {
var alertString = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn1Click(_ sender: Any) {
         let alert = UIAlertController(title: "『三國豪桀』",
                                      message: "選擇您想要的卡片" , preferredStyle: .actionSheet)
           func handler(_ act:UIAlertAction!) {
            print("你選了 \(act.title)")
        }
        // illustrating the three button styles
        alert.addAction(UIAlertAction(title: "5星 關羽", style: .default, handler: handler))
        alert.addAction(UIAlertAction(title: "5星 曹操", style: .default, handler: handler))
        alert.addAction(UIAlertAction(title: "5星 劉備", style: .default, handler: handler))
       alert.addAction(UIAlertAction(title: "5星 司馬懿", style: .default, handler: handler))
        alert.addAction(UIAlertAction(title: "5星 諸葛亮", style: .default, handler: handler))
        alert.addAction(UIAlertAction(title: "5星 孫權", style: .default, handler: handler))
        alert.addAction(UIAlertAction(title: "5星 大喬與小喬", style: .default, handler: handler))
        alert.addAction(UIAlertAction(title: "5星 呂布", style: .default, handler: handler))
        alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: handler))
        
        self.present(alert, animated: true)
        // dismissal is automatic when a button is tapped
    }
    
    
    @IBAction func btn2Clicked(_ sender: Any) {
        let alert = UIAlertController(title: "『折翼之契』", message: "填寫你想要的卡片序號", preferredStyle: .alert)
        alert.addTextField { tf in
            tf.keyboardType = .numberPad
            tf.addTarget(self, action: #selector(self.textChanged), for: .editingChanged)
        }
        func handler(_ act:UIAlertAction) {
           
            let tf = alert.textFields![0]
            print("你選了 \(tf.text),  \(alert.actions[Int(tf.text!)!-1].title)")
        }
        alert.addAction(UIAlertAction(title: "1. 亞伯汗", style: .default, handler: handler))
        alert.addAction(UIAlertAction(title: "2. 切西亞", style: .default, handler: handler))
        alert.addAction(UIAlertAction(title: "3. 瑰洱", style: .default, handler: handler))
        alert.addAction(UIAlertAction(title: "4. 帛曳", style: .default, handler: handler))
        alert.addAction(UIAlertAction(title: "5. 撒旦", style: .default, handler: handler))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: handler))
        for index in 0...4 {
            alert.actions[index].isEnabled = false
        }
        
        self.present(alert, animated: true)
    }
    func textChanged(_ sender: Any) {
        let tf = sender as! UITextField
        // enable OK button only if there is text
        
        var resp : UIResponder! = tf
        while !(resp is UIAlertController) { resp = resp.next }
        //let alert = resp as! UIAlertController
        //alert.actions[0].isEnabled = (tf.text != "")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
