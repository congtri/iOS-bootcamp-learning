//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlay: AVAudioPlayer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let note: String = "note" + String(sender.tag)
        let url = Bundle.main.url(forResource: note, withExtension: "wav")
        
        do {
            audioPlay = try AVAudioPlayer(contentsOf: url!)
        } catch {
            print(error)
        }
        
        audioPlay.play()
    }
    
  

}

