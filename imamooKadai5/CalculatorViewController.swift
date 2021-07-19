//
//  ViewController.swift
//  imamooKadai5
//
//  Created by Fumitaka Imamura on 2021/07/16.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak private var dividendTextField: UITextField!
    @IBOutlet weak private var divisorTextField: UITextField!
    @IBOutlet weak private var resultLabel: UILabel!

    @IBAction private func buttonPressed(_ sender: UIButton) {
        if dividendTextField.text == "" {
            displayAlert(message: "割られる数を入力してください")
        } else if divisorTextField.text == "" {
            displayAlert(message: "割る数を入力してください")
        } else if divisorTextField.text == "0" {
            displayAlert(message: "割る数には0を入力しないでください")
        } else {
            let dividendNumber = Double(dividendTextField.text ?? "") ?? 1
            let divisorNumber = Double(divisorTextField.text ?? "") ?? 1
            resultLabel.text = String(format: "%.5f", dividendNumber / divisorNumber)
        }
    }

    private func displayAlert(message: String) {
        let title = "課題5"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(
            UIAlertAction(title: "OK", style: .default, handler: nil)
        )
        present(alert, animated: true, completion: nil)
    }
}
