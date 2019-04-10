//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by CongTri on 4/1/19.
//  Copyright © 2019 CongTri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageSelected : Int = 1
    
    @IBOutlet weak var ballImangeView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askMeAnyThingButton(_ sender: Any) {
        answerTheQuestion()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        answerTheQuestion()
    }
    
    func answerTheQuestion() {
        imageSelected = Int.random(in: 1 ... 5)
        let ball : String = "ball" + String(imageSelected)
        ballImangeView.image = UIImage(named: ball)
    }
}

