//
//  ViewController.swift
//  Sonidos
//
//  Created by Alumno on 21/08/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

var player : AVAudioPlayer?

class ViewController: UIViewController {

    @IBAction func doTapReproducir(_ sender: UIButton) {
        if player != nil {
            player?.play()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()     
        let path =
            Bundle.main.path(forResource: "AUDIO 29.wav", ofType: nil)
        let url = URL(fileURLWithPath: path!)
        
        do {
    
            player = try AVAudioPlayer(contentsOf: url)
        
        } catch {

        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

