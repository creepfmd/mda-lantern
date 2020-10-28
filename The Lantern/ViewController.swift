//
//  ViewController.swift
//  The Lantern
//
//  Created by Сергей on 28.10.2020.
//

import UIKit

class ViewController: UIViewController {

    var currentColor: UIColor = .green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateColor()
    }

    @IBAction func buttonPressed() {
        updateColor()
    }
    
    fileprivate func updateColor() {
        var newColor: UIColor

        switch currentColor {
        case .yellow:
            newColor = .green
        case .green:
            newColor = .red
        case .red:
            newColor = .yellow
        default:
            newColor = .green
        }

        view.backgroundColor = newColor
        currentColor = newColor
    }
}

