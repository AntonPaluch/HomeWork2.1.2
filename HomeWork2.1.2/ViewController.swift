//
//  ViewController.swift
//  HomeWork2.1.2
//
//  Created by Pandos on 27.01.2021.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var buttonStart: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonStart.layer.cornerRadius = 10
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
        
 print("Размер стороны доступный из viewDidLoad: ", redView.frame.height)
    }
        
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        
 print("Размер стороны доступный из viewWillLayoutSubviews: ", redView.frame.height)
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        if buttonStart.currentTitle == "Start" {
            buttonStart.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenView.alpha = lightIsOn
            yellowView.alpha = lightIsOff
            currentLight = .red
        }
    }
}
    


