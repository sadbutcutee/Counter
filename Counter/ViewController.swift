//
//  ViewController.swift
//  Counter
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var historyView: UITextView!
    @IBOutlet weak var counterView: UILabel!
    
    private static var counterValue: Int = 0
    
    private func getCurrentDate() -> String {
        let getDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy, HH:mm:ss"
        
        return dateFormatter.string(from: getDate)
    }
    
    private func setCounterText() -> Void {
        counterView.text = "Значение счетчика: \(ViewController.counterValue)"
    }
    
    private func setHistoryText(_ text: String) -> Void {
        historyView.text += text + "\n"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyView.text = "История изменений: \n"
    }
    
    @IBAction private func counterPlusDidTap(_ sender: Any) {
        ViewController.counterValue += 1
        setCounterText()
        setHistoryText("\(getCurrentDate()): значение изменено на +1")
    }
    
    @IBAction private func counterCEDidTap(_ sender: Any) {
        ViewController.counterValue = 0
        setCounterText()
        setHistoryText("\(getCurrentDate()): значение сброшено")
    }
    @IBAction private func counterMinusDidTap(_ sender: Any) {
        if ViewController.counterValue == 0 {
            ViewController.counterValue = 0
            setHistoryText("\(getCurrentDate()): попытка уменьшить значение счётчика ниже 0")
        } else {
            ViewController.counterValue -= 1
            setHistoryText("\(getCurrentDate()): значение изменено на -1")
        }
        setCounterText()
    }
    
}

