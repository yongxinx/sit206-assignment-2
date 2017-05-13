//
//  ContactUsViewController.swift
//  SIT206 ASSIGNMENT2 APP
//
//  Created by NICK XIE on 13/05/2017.
//  Copyright © 2017 NICK XIE. All rights reserved.
//

import UIKit
import MessageUI

class ContactUsViewController: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SendMailButton(_ sender: Any) {
        
        let mailCompese = MFMailComposeViewController()
        mailCompese.mailComposeDelegate = self
        mailCompese.setToRecipients(["niccarsales@gamil.com"])
        mailCompese.setSubject("Test")
        mailCompese.setMessageBody("Hi???", isHTML: false)
        
        if MFMailComposeViewController.canSendMail()
        {
            self.present(mailCompese, animated: true, completion: nil)
        }
        else
        {
            print("Hahaha!")
        }
        
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func CallPhoneButton(_ sender: Any) {
        
        let url: NSURL = URL(string: "TEL://0439648514")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
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
