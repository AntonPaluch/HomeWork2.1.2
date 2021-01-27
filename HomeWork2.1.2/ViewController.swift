//
//  ViewController.swift
//  HomeWork2.1.2
//
//  Created by Pandos on 27.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var buttonStart: UIButton!
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha=0.3
        yellowView.alpha=0.3
        greenView.alpha=0.3
        redView.layer.cornerRadius=60
        yellowView.layer.cornerRadius=60
        greenView.layer.cornerRadius=60
        buttonStart.layer.cornerRadius=10
    }


 
    @IBAction func startButtonPressed(_ sender: UIButton)
    {
    buttonStart.setTitle("Next", for: .normal)
        redView.alpha=1
    //логику не смог реализовать 
        }

    }
    


