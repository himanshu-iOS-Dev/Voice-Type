//
//  ViewController.swift
//  VoiceRecognization
//
//  Created by Sourabh Goyal on 07/03/21.
//  Copyright © 2021 himanshu. All rights reserved.
//

import UIKit
import InstantSearchVoiceOverlay

class ViewController: UIViewController{
    

    let voiceOverlay = VoiceOverlayController()
    
    @IBOutlet weak var mybutton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mybutton.backgroundColor = .systemRed
        mybutton.setTitleColor(.white, for: .normal)
        
    }
    
    @IBAction func didtappedbtn(_ sender : UIButton) {
        
        voiceOverlay.settings.autoStart = false
        voiceOverlay.settings.autoStop = true
        voiceOverlay.settings.autoStopTimeout = 5
        voiceOverlay.start(on: self, textHandler: {text, final, _ in
            
            if final {
                print("Final Text: \(text)")
            } else {
              //  print("In Progress: \(text)")
            }
            
            
        }, errorHandler: {error in
            
        })
        
    }

    
    
    
}

