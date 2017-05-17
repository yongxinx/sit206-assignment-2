//
//  UsedCarsTableViewController.swift
//  SIT206 ASSIGNMENT2 APP
//
//  Created by NICK XIE on 16/05/2017.
//  Copyright © 2017 NICK XIE. All rights reserved.
//

import UIKit

class UsedCarsTableViewController: UITableViewController {
    
    var selectedIndex : Int = 0
    var cars : [Car] = [
        Car(name : "2016 BMW 330i M Sport", pri : 79990, img : UIImage(named : "2016 BMW 330i M Sport")!, status : "Drive Away"),
        Car(name : "2013 Mercedes-Benz ML500", pri : 67500, img : UIImage(named : "2013 Mercedes-Benz ML500")!, status : "Drive Away"),
        Car(name : "2016 Audi A4 sport MY16", pri : 61888, img : UIImage(named : "2016 Audi A4 sport MY16")!, status : "Drive Away"),
        Car(name : "2013 Ford Ranger XL Hi-Rider", pri : 26000, img : UIImage(named : "2013 Ford Ranger XL Hi-Rider")!, status : "Drive Away"),
        Car(name : "2014 Mazda 3 Touring BM Series", pri : 19950, img : UIImage(named : "2014 Mazda 3 Touring BM Series")!, status : "Drive Away"),
        Car(name : "2016 Suzuki Vitara RT-S Auto 2WD", pri : 25990, img : UIImage(named : "2016 Suzuki Vitara RT-S Auto 2WD")!, status : "Drive Away"),
        Car(name : "2017 Subaru Forester S4 MY17", pri : 35990, img : UIImage(named : "2017 Subaru Forester S4 MY17")!, status : "Drive Away"),
        Car(name : "2015 Toyota Camry Altise Auto", pri : 19888, img : UIImage(named : "2015 Toyota Camry Altise Auto")!, status : "Drive Away"),
        Car(name : "2014 Holden Calais V VF Auto MY15", pri : 38750, img : UIImage(named : "2014 Holden Calais V VF Auto MY15")!, status : "Drive Away"),
        Car(name : "2014 Holden Cruze SRi-V JH Series MY14", pri : 14990, img : UIImage(named : "2014 Holden Cruze SRi-V JH Series MY14")!, status : "Drive Away"),
        Car(name : "2016 Holden Commodore SS V Redline MY16", pri : 59490, img : UIImage(named : "2016 Holden Commodore SS V Redline MY16")!, status : "Drive Away")
    ]
    
    
    

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

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cars.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath)

        // Configure the cell...
        
        cell.textLabel?.text = cars[indexPath.row].carName
        cell.detailTextLabel?.text = "$\(cars[indexPath.row].carPrice) \(cars[indexPath.row].carStatus)"
        cell.imageView?.image = cars[indexPath.row].carImage
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedIndex = indexPath.row
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "carDetailsSegue" {
            (segue.destination as! CarInfoTableViewController).selectedCar = cars[selectedIndex]
            (segue.destination as! CarInfoTableViewController).i = selectedIndex
        }
    }
    
    @IBAction func someThing(segue : UIStoryboardSegue) {
        
    }

}
