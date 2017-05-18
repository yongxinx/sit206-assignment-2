//
//  EnquiryViewController.swift
//  SIT206 ASSIGNMENT2 APP
//
//  Created by NICK XIE on 18/05/2017.
//  Copyright © 2017 NICK XIE. All rights reserved.
//

import UIKit

class EnquiryViewController: UIViewController {
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var phoneTxt: UITextField!
    @IBOutlet weak var postcodeTxt: UITextField!
    @IBOutlet weak var commentTxt: UITextField!
    

        
    @IBAction func sengEquiry(_ sender: UIButton) {
    
        if nameTxt.text == "" || emailTxt.text == "" || phoneTxt.text == "" || postcodeTxt.text == "" {
            
            let alertController1 = UIAlertController(title: "Failed!:-(", message: "Please fill in the missing field!", preferredStyle: .alert)
            
            let yesAction1 = UIAlertAction(title: "Ok", style: .default) {
                (action) -> Void in print("111111")
            }
            alertController1.addAction(yesAction1)
            self.present(alertController1, animated: true, completion: nil)
        } else {
            let alertController2 = UIAlertController(title: "Enquiry sent successfully!:-)", message: "We will contact you shortly!", preferredStyle: .alert)
            
            let yesAction2 = UIAlertAction(title: "Ok", style: .default) {
                (action) -> Void in print("222222")
            }
            alertController2.addAction(yesAction2)
            self.present(alertController2, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
