//
//  SellyourcarTableViewController.swift
//  SIT206 ASSIGNMENT2 APP
//
//  Created by NICK XIE on 18/05/2017.
//  Copyright © 2017 NICK XIE. All rights reserved.
//

import UIKit

class SellyourcarTableViewController: UITableViewController {
    
    @IBOutlet weak var vehicleTxt: UITextField!
    @IBOutlet weak var makeTxt: UITextField!
    @IBOutlet weak var locationTxt: UITextField!
    @IBOutlet weak var yearTxt: UITextField!
    @IBOutlet weak var colourTxt: UITextField!
    @IBOutlet weak var kilometreTxt: UITextField!
    @IBOutlet weak var bodytypeTxt: UITextField!
    @IBOutlet weak var transmissionTxt: UITextField!
    @IBOutlet weak var fueltypeTxt: UITextField!
    @IBOutlet weak var fueleconomyTxt: UITextField!
    @IBOutlet weak var drivetypeTxt: UITextField!
    @IBOutlet weak var enginetypeTxt: UITextField!
    @IBOutlet weak var surnameTxt: UITextField!
    @IBOutlet weak var telephoneTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
 
    @IBAction func sendForm(_ sender: UIButton) {
        
        if vehicleTxt.text == "" || makeTxt.text == "" || locationTxt.text == "" || yearTxt.text == "" || colourTxt.text == "" || kilometreTxt.text == "" || bodytypeTxt.text == "" || transmissionTxt.text == "" || fueltypeTxt.text == "" || fueleconomyTxt.text == "" || drivetypeTxt.text == "" || enginetypeTxt.text == "" || surnameTxt.text == "" || telephoneTxt.text == "" || emailTxt.text == "" {
            
            let alertController3 = UIAlertController(title: ":-(", message: "Please fill in the missing field", preferredStyle: .alert)
            
            let yesAction3 = UIAlertAction(title: "Ok", style: .default) {
                (action) -> Void in print("111111")
            }
            alertController3.addAction(yesAction3)
            self.present(alertController3, animated: true, completion: nil)
        } else {
            let alertController4 = UIAlertController(title: ":-)", message: "Enquiry sent successfully. We will contact you shortly!", preferredStyle: .alert)
            
            let yesAction4 = UIAlertAction(title: "Ok", style: .default) {
                (action) -> Void in print("222222")
            }
            alertController4.addAction(yesAction4)
            self.present(alertController4, animated: true, completion: nil)
        }
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
}
