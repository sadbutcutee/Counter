//
//  ViewController.swift
//  Counter
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterPlusButton: UIButton!
    @IBOutlet weak var counterTextView: UILabel!
    private static var counter: Int = 0
    
    @IBAction func counterButtonDidTap(_ sender: Any) {
        ViewController.counter += 1
        counterTextView.text = "Значение счетчика: \(ViewController.counter)"
    }
    
}

