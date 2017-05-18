//
//  ViewController.swift
//  SIT206 ASSIGNMENT2 APP
//
//  Created by NICK XIE on 30/04/2017.
//  Copyright © 2017 NICK XIE. All rights reserved.
//

import UIKit
import AVFoundation

var soundPlanyer : AVAudioPlayer?
var elapsedTime : TimeInterval = 0

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = Bundle.main.path(forResource: "song", ofType: "mp3")
        let url = URL(fileURLWithPath: path!)
        
        do {
            try soundPlanyer = AVAudioPlayer(contentsOf: url)
        }
        catch {
            print("file not available")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func PlayResume(_ sender: UIButton) {
        
        if soundPlanyer != nil{
            soundPlanyer!.currentTime = elapsedTime
            soundPlanyer!.play()
        }
    }

    @IBAction func Pause(_ sender: UIButton) {
        
        if soundPlanyer != nil {
            elapsedTime = soundPlanyer!.currentTime
            soundPlanyer!.pause()
        }
    }

    @IBAction func Stop(_ sender: UIButton) {
        
        if soundPlanyer != nil {
            soundPlanyer!.stop()
            elapsedTime = 0
        }
    }
}

