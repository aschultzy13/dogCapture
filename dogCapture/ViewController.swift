//
//  ViewController.swift
//  dogCapture
//
//  Created by Allison Schultz on 8/3/17.
//  Copyright © 2017 pupVenture. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    // Sounds to be played
    var pikaSqueak = AVAudioPlayer();
    var ballSqueak = AVAudioPlayer();
    var doorBell = AVAudioPlayer();
    var duckQuack = AVAudioPlayer();
    var pigSqueal = AVAudioPlayer();
    var squirrelSound = AVAudioPlayer();
    
    var toySqueak = AVAudioPlayer();
    var longSqueakToy = AVAudioPlayer();
    var shortSqueakToy = AVAudioPlayer();
    var mouseSound = AVAudioPlayer();
    var ratSound = AVAudioPlayer();
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Input sounds and get ready to play
        do {
            pikaSqueak = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "pikaConversation", ofType: "mp3")!));
            pikaSqueak.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            ballSqueak = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "squeakyBall", ofType: "mp3")!));
            ballSqueak.prepareToPlay();
        } catch {
            print(error)
        }

        do {
            doorBell = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "doorBell", ofType: "mp3")!));
            doorBell.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            duckQuack = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "duckQuack", ofType: "mp3")!));
            duckQuack.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            pigSqueal = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "pigSqueal", ofType: "mp3")!));
            pigSqueal.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
        toySqueak = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "rubberDuckSqueak", ofType: "mp3")!));
            toySqueak.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            squirrelSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "squirrel", ofType: "mp3")!));
            squirrelSound.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            longSqueakToy = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "longSqueaktoy", ofType: "mp3")!));
            longSqueakToy.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            shortSqueakToy = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "shortSqueaktoy", ofType: "mp3")!));
            shortSqueakToy.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            mouseSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "mouseSound", ofType: "mp3")!));
            mouseSound.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            ratSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ratSound", ofType: "mp3")!));
            ratSound.prepareToPlay();
        } catch {
            print(error)
        }
    }
    // Button Actions
    
    @IBAction func pikaButton(_ sender: Any) {
        if pikaSqueak.isPlaying {
            pikaSqueak.stop();
        } else {
        pikaSqueak.play();
        }
        
    }
    @IBAction func ballSqueakButton(_ sender: Any) {
        if ballSqueak.isPlaying {
            ballSqueak.stop();
        } else {
            ballSqueak.play();
        }
    }
    
    @IBAction func doorBellButton(_ sender: Any) {
        if doorBell.isPlaying {
            doorBell.stop();
        } else {
            doorBell.play();
        }
    }
    
    @IBAction func duckQuackButton(_ sender: Any) {
        if duckQuack.isPlaying {
            duckQuack.stop();
        } else {
            duckQuack.play();
        }
    }
    
    @IBAction func pigSquealButton(_ sender: Any) {
            if pigSqueal.isPlaying {
            pigSqueal.stop();
        } else {
            pigSqueal.play();
        }
    }
    
    @IBAction func toySqueakButton(_ sender: Any) {
        if toySqueak.isPlaying {
            toySqueak.stop();
        } else {
            toySqueak.play();
        }
    }
    
    
    @IBAction func squirrelButton(_ sender: Any) {
        if squirrelSound.isPlaying {
            squirrelSound.stop();
        } else {
            squirrelSound.play();
        }
    }
    
    @IBAction func shortSqueakToyButton(_ sender: Any) {
        if shortSqueakToy.isPlaying {
            shortSqueakToy.stop();
        } else {
            shortSqueakToy.play();
        }
    }
    
    @IBAction func longSqueakToyButton(_ sender: Any) {
        if longSqueakToy.isPlaying {
            longSqueakToy.stop();
        } else {
            longSqueakToy.play();
        }
    }
    
    @IBAction func mouseSound(_ sender: Any) {
        if mouseSound.isPlaying {
            mouseSound.stop();
        } else {
            mouseSound.play();
        }
    }
    
    @IBAction func ratSoundButton(_ sender: Any) {
        if ratSound.isPlaying {
            ratSound.stop();
        } else {
            ratSound.play();
        }
    }
   


}

