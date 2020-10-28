//
//  ViewController.swift
//  The Lantern
//
//  Created by Сергей on 28.10.2020.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var torchIsOn = false
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
    
    func toggleTorch(on: Bool) {
        guard let device = AVCaptureDevice.default(for: .video) else { return }

        if device.hasTorch {
            do {
                try device.lockForConfiguration()

                if on == true {
                    device.torchMode = .on
                } else {
                    device.torchMode = .off
                }

                device.unlockForConfiguration()
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        updateColor()
        toggleTorch(on: torchIsOn)
        torchIsOn.toggle()
    }
}

