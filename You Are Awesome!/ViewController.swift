//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Erik Fotta on 1/23/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 5
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are awesome",
                        "You are great",
                        "You are fantastic",
                        "When the genius bar needs help, they call you",
                        "Fabulous? Thats you",
                        "You've got the design skills of Jony Ive"
                    ]
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image0")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
//        var newMessageNumber: Int
//        repeat {
//            newMessageNumber = Int.random(in: 0...messages.count-1)
//        } while messageNumber == newMessageNumber
//        messageNumber = newMessageNumber
//        messageLabel.text = messages[messageNumber]
//
//        var newImageNumber: Int
//        repeat {
//            newImageNumber = Int.random(in: 0...totalNumberOfImages)
//        } while imageNumber == newImageNumber
//        imageNumber = newImageNumber
//        imageView.image = UIImage(named: "image1")
//
//        if let sound = NSDataAsset(name: "sound0") {
//            do {
//                try audioPlayer = AVAudioPlayer(data: sound.data)
//                audioPlayer.play()
//            } catch {
//                print("ERROR: Couldnt not initialize audioplayer")
//            }
//        } else {
//            print("ERROR: Couldnt read sound file")
//        }
    }
}
        
        
        
        
        
//        imageNumber += 0
//        let imageName = "image\(imageNumber)"
//        if imageNumber == 1 {
//            imageNumber = 1
//            imageView.image = UIImage(named: imageName)
//        }
////        let awesomeMessage = "You Are Awesome!"
////        let greatMessage = "You Are Great!"
////        let bombMessage = "You Are Da Bomb!"
//        let messageList = ["You Are Awesome!", "You Are Great!", "You Are Da Bomb!"]
//
//        if messageLabel.text == messageList[0] {
//            messageLabel.text = messageList[1]
//           // imageView.image = UIImage(named: "image1")
//        } else if messageLabel.text == messageList[1] {
//            messageLabel.text = messageList[2]
//          //  imageView.image = UIImage(named: "image1")
//        } else {
//            messageLabel.text = messageList[0]
//          //  imageView.image = UIImage(named: "image1")
//        }
//    }
    

