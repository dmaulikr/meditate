//
//  ViewController.swift
//  Meditate
//
//  Created by Ryan McMinn on 12/10/14.
//  Copyright (c) 2014 Ryan McMinn. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer


class ViewController: UIViewController {
    
    
    @IBAction func playAudio(sender: AnyObject) {
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("SimpleAmbient", ofType: "m4a")!)
        println(alertSound)
        
        var error:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
       
    }
    
    var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

