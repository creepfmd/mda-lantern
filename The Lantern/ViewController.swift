//
//  ViewController.swift
//  The Lantern
//
//  Created by Сергей on 28.10.2020.
//

import UIKit

class ViewController: UIViewController {

    var currentColorIndex: Int = -1
    let availableColors: [UIColor] = [
        .red,
        .orange,
        .yellow,
        .green,
        .cyan,
        .blue,
        .purple,
    ]
    
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

        currentColorIndex += 1
        if currentColorIndex == availableColors.count {
            currentColorIndex = 0
        }
        
        newColor = availableColors[currentColorIndex]

        view.backgroundColor = newColor
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        updateColor()
    }
}

