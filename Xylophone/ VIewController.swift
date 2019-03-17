//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player : AVAudioPlayer!
    let soundArray: [String] = ["note1", "note2",  "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let idx = sender.tag - 1
        print(idx)
        print(soundArray[idx])
        playSound(fileName: soundArray[idx])
    }
    
    func playSound(fileName: String){
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: "wav")
        do {
            try player = AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        player.play()
    }
    
  

}

