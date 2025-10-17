//
//  ViewController.swift
//  Counter
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var counterPlusButton: UIButton!
    @IBOutlet weak private var counterTextView: UILabel!
    private var counter: Int = 0
    
    @IBAction private func counterButtonDidTap(_ sender: Any) {
        counter += 1
        counterTextView.text = "Значение счетчика: \(counter)"
    }
    
}

