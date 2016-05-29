    //
//  ViewController.swift
//  tapper
//
//  Created by Math LLC on 5/16/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //properties
    
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onTapBtnTapped(sender: UIButton!) {
        currentTaps++
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }

        
    }
    
    @IBAction func onPlayButtonClick(sender: UIButton!) {
        
        if howManyTapsText.text != nil && howManyTapsText.text != "" {
            
            logoImg.hidden = true
            playButton.hidden = true
            howManyTapsText.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsText.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        }
        
    }
    
    
    func updateTapsLbl() {
        tapsLbl.text = "\(currentTaps) taps"
        
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsText.text = ""
        
        logoImg.hidden = false
        playButton.hidden = false
        howManyTapsText.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
        
    }
}

