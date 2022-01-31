//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Erik Fotta on 1/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    var imageNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        imageNumber += 0
        let imageName = "image\(imageNumber)"
        if imageNumber == 1 {
            imageNumber = 1
            imageView.image = UIImage(named: imageName)
        }
//        let awesomeMessage = "You Are Awesome!"
//        let greatMessage = "You Are Great!"
//        let bombMessage = "You Are Da Bomb!"
        let messageList = ["You Are Awesome!", "You Are Great!", "You Are Da Bomb!"]

        if messageLabel.text == messageList[0] {
            messageLabel.text = messageList[1]
           // imageView.image = UIImage(named: "image1")
        } else if messageLabel.text == messageList[1] {
            messageLabel.text = messageList[2]
          //  imageView.image = UIImage(named: "image1")
        } else {
            messageLabel.text = messageList[0]
          //  imageView.image = UIImage(named: "image1")
        }
    }
    
}

