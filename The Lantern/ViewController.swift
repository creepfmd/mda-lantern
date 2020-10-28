//
//  ViewController.swift
//  The Lantern
//
//  Created by Сергей on 28.10.2020.
//

import UIKit

class ViewController: UIViewController {

    var currentColor: UIColor = .green
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        updateColor()
    }
}

