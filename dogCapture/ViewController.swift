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
    var dog1bark = AVAudioPlayer();
    var dog2bark = AVAudioPlayer();
    var dog3bark = AVAudioPlayer();
    var dog4bark = AVAudioPlayer();
    var dog5bark = AVAudioPlayer();
    var dog6bark = AVAudioPlayer();
    var toySqueak = AVAudioPlayer();
    var longSqueakToy = AVAudioPlayer();
    var shortSqueakToy = AVAudioPlayer();
    var mouseSound = AVAudioPlayer();
    var ratSound = AVAudioPlayer();
    var wolfHowl = AVAudioPlayer();
    var packBarking = AVAudioPlayer();
    var chewbaccaSound = AVAudioPlayer();
    var dogWhine = AVAudioPlayer();
    var ambulanceSiren = AVAudioPlayer();
    var firetruckSiren = AVAudioPlayer();
    var policeSiren = AVAudioPlayer();
    var tornadoSiren = AVAudioPlayer();
    
    
    
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
        
        do {
            dog1bark = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dog1sound", ofType: "mp3")!));
            dog1bark.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            dog2bark = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dog2sound", ofType: "mp3")!));
            dog2bark.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            dog3bark = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dog3sound", ofType: "mp3")!));
            dog3bark.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            dog4bark = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dog4sound", ofType: "mp3")!));
            dog4bark.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            dog5bark = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dog5sound", ofType: "mp3")!));
            dog5bark.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            dog6bark = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dog6sound", ofType: "mp3")!));
            dog6bark.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            wolfHowl = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "wolfHowl", ofType: "mp3")!));
            wolfHowl.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            packBarking = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "packBarking", ofType: "mp3")!));
            packBarking.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            chewbaccaSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "chewbacca", ofType: "mp3")!));
            chewbaccaSound.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            dogWhine = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "dogCrying", ofType: "mp3")!));
            dogWhine.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            ambulanceSiren = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Ambulance", ofType: "mp3")!));
            ambulanceSiren.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            firetruckSiren = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "firetruckSiren", ofType: "mp3")!));
            firetruckSiren.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            policeSiren = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "policeSiren", ofType: "mp3")!));
            policeSiren.prepareToPlay();
        } catch {
            print(error)
        }
        
        do {
            tornadoSiren = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "tornadoSiren", ofType: "mp3")!));
            tornadoSiren.prepareToPlay();
        } catch {
            print(error)
        }
        
    }
    // Button Actions
    
    @IBAction func pikaButton(_ sender: Any) {
        pikaButton.alpha = 0.5 // 50% opacity
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
    
    @IBAction func dog1barkButton(_ sender: Any) {
        if dog1bark.isPlaying {
            dog1bark.stop();
        } else {
            dog1bark.play();
        }
    }
    
    @IBAction func dog2barkButton(_ sender: Any) {
        if dog2bark.isPlaying {
            dog2bark.stop();
        } else {
            dog2bark.play();
        }
    }
   
    @IBAction func dog3barkButton(_ sender: Any) {
        if dog3bark.isPlaying {
            dog3bark.stop();
        } else {
            dog3bark.play();
        }
    }

    @IBAction func dog4barkButton(_ sender: Any) {
        if dog4bark.isPlaying {
            dog4bark.stop();
        } else {
            dog4bark.play();
        }
    }

    @IBAction func dog5barkButton(_ sender: Any) {
        if dog5bark.isPlaying {
            dog5bark.stop();
        } else {
            dog5bark.play();
        }
    }
    
    @IBAction func dog6barkButton(_ sender: Any) {
        if dog6bark.isPlaying {
            dog6bark.stop();
        } else {
            dog6bark.play();
        }
    }
    
    @IBAction func wolfHowlButton(_ sender: Any) {
        if wolfHowl.isPlaying {
            wolfHowl.stop();
        } else {
            wolfHowl.play();
        }
    }
    
    @IBAction func packBarkingButton(_ sender: Any) {
        if packBarking.isPlaying {
            packBarking.stop();
        } else {
            packBarking.play();
        }
    }
    
    @IBAction func chewbaccaButton(_ sender: Any) {
        if chewbaccaSound.isPlaying {
            chewbaccaSound.stop();
        } else {
            chewbaccaSound.play();
        }
    }
    
    @IBAction func dogWhineButton(_ sender: Any) {
        if dogWhine.isPlaying {
            dogWhine.stop();
        } else {
            dogWhine.play();
        }
    }
    
    @IBAction func ambulanceButton(_ sender: Any) {
        if ambulanceSiren.isPlaying {
            ambulanceSiren.stop();
        } else {
            ambulanceSiren.play();
        }
    }
    
    @IBAction func firetruckButton(_ sender: Any) {
        if firetruckSiren.isPlaying {
            firetruckSiren.stop();
        } else {
            firetruckSiren.play();
        }
    }
    
    @IBAction func policeButton(_ sender: Any) {
        if policeSiren.isPlaying {
            policeSiren.stop();
        } else {
            policeSiren.play();
        }
    }
    
    @IBAction func tornadoButton(_ sender: Any) {
        if tornadoSiren.isPlaying {
            tornadoSiren.stop();
        } else {
            tornadoSiren.play();
        }
    }
    
    @IBAction func doorBellButton(_ sender: Any) {
        if doorBell.isPlaying {
            doorBell.stop();
        } else {
            doorBell.play();
        }
    }
    
    
}

