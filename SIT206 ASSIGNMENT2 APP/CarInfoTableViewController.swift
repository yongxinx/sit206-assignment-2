//
//  CarInfoTableViewController.swift
//  SIT206 ASSIGNMENT2 APP
//
//  Created by NICK XIE on 16/05/2017.
//  Copyright © 2017 NICK XIE. All rights reserved.
//

import UIKit

class CarInfoTableViewController: UITableViewController {
    var a : Int = 0
    var i : Int?
    var selectedCar : Car?
    var cars : [Cardetails] = [
        
        Cardetails(img : UIImage(named : "2016 BMW 330i M Sport")!, name : "2016 BMW 330i M Sport", btype : "4 doors 5 seat Sedan", colour : "Black Sapphire", rplate : "1GGY734", ometer : 1522, eng : "4cyl 2.0L Turbo Petrol", transmission : "8 speed Sports Automatic", dtype : "Rear Wheel Drive", rexpiry : "Oct 2017", pri : 79990, FEC : "5.8(L/100km)"  ),
        Cardetails(img : UIImage(named : "2013 Mercedes-Benz ML500")!, name : "2013 Mercedes-Benz ML500", btype : "SUV",  colour : "Black", rplate : "DLQ80N", ometer : 72170, eng : "8cyl 4.7L Turbo Petrol", transmission : "7 speed Sports Automatic", dtype : "4X4 Constant", rexpiry : "August 2017", pri : 67500, FEC : "12.3(L/100km)" ),
        Cardetails(img : UIImage(named : "2016 Audi A4 sport MY16")!, name : "2016 Audi A4 sport MY16", btype : "4 door 5 seat Sedan", colour : "Manhattan Grey", rplate : "454WUA", ometer : 2027, eng : "4cyl 2.0L Turbo Petrol", transmission : "7 speed Sports Automatic", dtype : "Front Wheel Drive", rexpiry : "Dec 2017", pri : 61888, FEC : "5.3(L/100km)" ),
        Cardetails(img : UIImage(named : "2013 Ford Ranger XL Hi-Rider")!, name : "2013 Ford Ranger XL Hi-Rider", btype : "4 doors 5 seat Ute", colour : "Cool White", rplate : "S771AWB", ometer : 43758, eng : "4 cyl 2.2L Turbo Diesel", transmission : "6 speed Sports Automatic", dtype : "Rear Wheel Drive", rexpiry : "June 2017", pri : 26000, FEC : "8.9 (L/100km)" ),
        Cardetails(img : UIImage(named : "2014 Mazda 3 Touring BM Series")!, name : "2014 Mazda 3 Touring BM Series", btype : "5 doors 5 seat Hatch", colour : "Snowflake White Pearl", rplate : "S437BEN", ometer : 20145, eng : "4 cylinder Petrol Aspirated 2.0L", transmission : "6 speed Sports Automatic", dtype : "Front Wheel Drive", rexpiry : "Check with seller", pri : 19950, FEC : "5.8(L/100km)" ),
        Cardetails(img : UIImage(named : "2016 Suzuki Vitara RT-S Auto 2WD")!, name : "2016 Suzuki Vitara RT-S Auto 2WD", btype : "5 doors 5 seat SUV", colour : "Galactic Grey", rplate : "DLI459", ometer : 9550, eng : "4 cylinder Petrol Aspirated 1.6L", transmission : "6 speed Sports Automatic", dtype : "Front Wheel Drive", rexpiry : "Feb 2018", pri : 25990, FEC : "6(L/100km)" ),
        Cardetails(img : UIImage(named : "2017 Subaru Forester S4 MY17")!, name : "2017 Subaru Forester S4 MY17", btype : "5 doors 5 seat SUV", colour : "Dark Grey", rplate : "SOP944", ometer : 6540, eng : "4 cyl 2.5L Petrol", transmission : "6 speed Constantly Variable Transmission", dtype : "Front Wheel Drive", rexpiry : "Jan 2018", pri : 35990, FEC : "8.1(L/100km)" ),
        Cardetails(img : UIImage(named : "2015 Toyota Camry Altise Auto")!, name : "2015 Toyota Camry Altise Auto", btype : "4 door 5 seat Sedan", colour : "Diamond White", rplate : "1JX9EG", ometer : 65478, eng : "4 cylinder Petrol Aspirated 2.5L", transmission : "6 speed Sports Automatic", dtype : "Front Wheel Drive", rexpiry : "Jan 2018", pri : 19888, FEC : "7.8(L/100km)" ),
        Cardetails(img : UIImage(named : "2014 Holden Calais V VF Auto MY15")!, name : "2014 Holden Calais V VF Auto MY15", btype : "4 door 5 seat Sedan", colour : "Heron White", rplate : "531XDL", ometer : 35692, eng : "8 cylinder Petrol Aspirated 6.0L", transmission : "6 speed Sports Automatic", dtype : "Rear Wheel Drive", rexpiry : "Oct 2017", pri : 38750, FEC : "11.7(L/100km)" ),
        Cardetails(img : UIImage(named : "2014 Holden Cruze SRi-V JH Series MY14")!, name : "2014 Holden Cruze SRi-V JH Series MY14", btype : "5 doors 5 seat Hatch", colour : "Regal Peacock", rplate : "CRQ34E", ometer : 59704, eng : "4 cyl 1.6L Turbo Petrol", transmission : "6 speed Sports Automatic", dtype : "Front Wheel Drive", rexpiry : "April 2018", pri : 14990, FEC : "7.9(L/100km)" ),
        Cardetails(img : UIImage(named : "2016 Holden Commodore SS V Redline MY16")!, name : "2016 Holden Commodore SS V Redline MY16", btype : "4 door 5 seat Sedan", colour : "Heron White", rplate : "1JN9AB", ometer : 3350, eng : "8 cylinder Petrol Aspirated 6.2L", transmission : "6 speed Sports Automatic", dtype : "Rear Wheel Drive", rexpiry : "July 2017", pri : 59490, FEC : "12.9 (L/100km)" )
    
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
    @IBOutlet weak var PriceTxt: UILabel!
    @IBOutlet weak var FuelexTxt: UILabel!
    


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
            PriceTxt.text = "$\(cars[i!].carPrice)"
            FuelexTxt.text = cars[i!].carFueleconomycombined
            
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
}
