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
        guard let dividendNumber = Double(dividendTextField.text ?? "") else {
            displayAlert(message: "割られる数を入力してください")
            return
        }

        guard let divisorNumber = Double(divisorTextField.text ?? "") else {
            displayAlert(message: "割る数を入力してください")
            return
        }

        guard divisorNumber != 0 else {
            displayAlert(message: "割る数には0を入力しないでください")
            return
        }

        resultLabel.text = String(format: "%.5f", dividendNumber / divisorNumber)
    }

    private func displayAlert(message: String) {
        let title = "課題5"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        // Identifier Name Violation: Variable name should be between 3 and 40 characters long: 'ok' (identifier_name)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)

        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
