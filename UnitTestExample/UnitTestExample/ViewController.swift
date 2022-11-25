//
//  ViewController.swift
//  UnitTestExample
//
//  Created by Jun on 2022/11/18.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var defaults = UserDefaults.standard
    
    let targetGuessLabel = UILabel()
    
    let game = BullsEyeGame()
    enum GameStyle:Int { case moveSlider, guessPosition }
    let gameStyleRange = 0..<2
    var gameStyle = GameStyle.guessPosition
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
}
