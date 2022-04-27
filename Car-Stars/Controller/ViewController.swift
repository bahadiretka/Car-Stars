//
//  ViewController.swift
//  Car Stars
//
//  Created by Bahadır Kılınç on 27.04.2022.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {


    @IBOutlet weak var viewedCar: UIImageView!
    @IBOutlet weak var firstChoice: UIButton!
    @IBOutlet weak var secondChoice: UIButton!
    @IBOutlet weak var thirdChoice: UIButton!
    var player: AVAudioPlayer?
    let buttons = [#imageLiteral(resourceName: "trueAnswer"), #imageLiteral(resourceName: "wrongAnswer"), #imageLiteral(resourceName: "defaultChoice")]
    var carModelLogic = CarModelLogic()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userChoice = sender.currentTitle!
        let isCorrect = carModelLogic.checkAnswer(userChoice)
        
        if isCorrect{
            sender.setBackgroundImage(buttons[0], for: .normal) // change background of button
            playSound("correct_answer_sound")// play correct sound
            
        }else{
            sender.setBackgroundImage(buttons[1], for: .normal)
            playSound("wrong_answer_sound")// play wrong sound
        }
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateBackground), userInfo: nil, repeats: false)
        carModelLogic.nextCar()
        updateUI()
    }
    func updateUI(){
        viewedCar.image = carModelLogic.getImage()
        firstChoice.setTitle(carModelLogic.getChoice1(), for: .normal)
        secondChoice.setTitle(carModelLogic.getChoice2(), for: .normal)
        thirdChoice.setTitle(carModelLogic.getChoice3(), for: .normal)
    }
    @objc func updateBackground(){
        firstChoice.setBackgroundImage(buttons[2], for: .normal)
        secondChoice.setBackgroundImage(buttons[2], for: .normal)
        thirdChoice.setBackgroundImage(buttons[2], for: .normal)
    }
    func playSound(_ soundName: String) {
        guard let path = Bundle.main.path(forResource: soundName, ofType:"mp3") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

