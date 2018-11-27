
// Created on: Nov-2018
// Created by: Christian Briglio 
// Created for: ICS3U
// This program checks if its a leap year or not for the user 
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionLabel = UILabel()
    let yearEnteredTextField = UITextField()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Enter a year to see if its a leap year"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        yearEnteredTextField.borderStyle = UITextBorderStyle.roundedRect
        yearEnteredTextField.placeholder = "Enter a year"
        view.addSubview(yearEnteredTextField)
        yearEnteredTextField.translatesAutoresizingMaskIntoConstraints = false
        yearEnteredTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        yearEnteredTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("Check", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(checkIfLeapYear), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: yearEnteredTextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    @objc func checkIfLeapYear() {
        let yearEnetered : Int = Int(yearEnteredTextField.text!)!
        let divisibleBy4 = yearEnetered % 4
        if divisibleBy4 == 0 {
            let divisibleby100 = yearEnetered % 100
            if divisibleby100 == 0 {
                let divisibleby400 = yearEnetered % 400
                if divisibleby400 == 0 {
                    answerLabel.text = "It is a leap year."
                } else {
                    answerLabel.text = "It is not a leap year."
                }
            } else {
                answerLabel.text = "It is a leap year."
            }
        } else {
            answerLabel.text = "It is not a leap year."
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
