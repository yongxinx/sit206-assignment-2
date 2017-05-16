//
//  CarInfoTableViewController.swift
//  SIT206 ASSIGNMENT2 APP
//
//  Created by NICK XIE on 16/05/2017.
//  Copyright © 2017 NICK XIE. All rights reserved.
//

import UIKit

class CarInfoTableViewController: UITableViewController {
    var i : Int?
    var selectedCar : Car?
    var cars : [Cardetails] = [
        
        Cardetails(img : UIImage(named : "2016 BMW 330i M Sport")!, name : "2016 BMW 330i M Sport", btype : "Sedan", colour : "Black Sapphire", rplate : "1GGY734", ometer : 1522, eng : "4cyl 2.0L Turbo Petrol", transmission : "8 speed Sports Automatic", dtype : "Rear Wheel Drive", rexpiry : "Oct 2017" ),
        Cardetails(img : UIImage(named : "2013 Mercedes-Benz ML500")!, name : "2013 Mercedes-Benz ML500", btype : "SUV",  colour : "Black", rplate : "DLQ80N", ometer : 72170, eng : "8cyl 4.7L Turbo Petrol", transmission : " speed Sports Automatic", dtype : "4X4 Constant", rexpiry : "August 2017" ),
        Cardetails(img : UIImage(named : "2016 Audi A4 sport MY16")!, name : "2016 Audi A4 sport MY16", btype : "Sedan", colour : "Manhattan Grey", rplate : "454WUA", ometer : 2027, eng : "4cyl 2.0L Turbo Petrol", transmission : "7 speed Sports Automatic Dual Clutch", dtype : "Front Wheel Drive", rexpiry : "Dec 2017" ),
    
    ]

    
    
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var nameTxt: UILabel!
    @IBOutlet weak var bodytypeTxt: UILabel!
    @IBOutlet weak var colourTxt: UILabel!
    @IBOutlet weak var RegplateTxt: UILabel!
    @IBOutlet weak var OdometerTxt: UILabel!
    @IBOutlet weak var EngineTxt: UILabel!
    @IBOutlet weak var TransmissionTxt: UILabel!
    @IBOutlet weak var DrivetypeTxt: UILabel!
    @IBOutlet weak var RegexpiryTxt: UILabel!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
        override func viewWillAppear(_ animated: Bool) {
            carImage.image = selectedCar!.carImage
            nameTxt.text = selectedCar!.carName
            bodytypeTxt.text = cars[i!].carBodytype
            colourTxt.text = cars[i!].carColour
            RegplateTxt.text = cars[i!].carRegplate
            OdometerTxt.text = "\(cars[i!].carOdometer)km"
            EngineTxt.text = cars[i!].carEngine
            TransmissionTxt.text = cars[i!].carTransmission
            DrivetypeTxt.text = cars[i!].carDrivetype
            RegexpiryTxt.text = cars[i!].carRegexpiry
            
            
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
}
