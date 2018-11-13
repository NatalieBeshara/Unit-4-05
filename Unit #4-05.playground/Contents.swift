// Created on: 13-Nov-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program calculates the volume of a cylinder
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel = UILabel()
    let radiusTextField = UITextField()
    let heightTextField = UITextField()
    let convertButton = UIButton ()
    let answerLabel = UILabel()
    
    func calculatingVolume(radiusEntered : Float, heightEntered : Float) -> Double{
        //  
        
        let PI : Float = 3.14
        
        var calculate  = PI * pow((radiusEntered), 2) * heightEntered
        var volumeCalculated = Double(calculate)
        
        return volumeCalculated
    }
        
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Enter the hieght and radius of your cylinder."
        instructionsLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        radiusTextField.borderStyle = UITextBorderStyle.roundedRect
        radiusTextField.placeholder = "Enter radius"
        view.addSubview(radiusTextField)
        radiusTextField.translatesAutoresizingMaskIntoConstraints = false
        radiusTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        radiusTextField.bottomAnchor.constraint(equalTo: instructionsLabel.topAnchor, constant: 80).isActive = true
        
        heightTextField.borderStyle = UITextBorderStyle.roundedRect
        heightTextField.placeholder = "Enter height"
        view.addSubview(heightTextField)
        heightTextField.translatesAutoresizingMaskIntoConstraints = false
        heightTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        heightTextField.bottomAnchor.constraint(equalTo: radiusTextField.topAnchor, constant: 80).isActive = true
        
        convertButton.setTitle("Calculate", for: UIControlState.normal)
        convertButton.setTitleColor(.blue, for: .normal)
        convertButton.addTarget(self, action: #selector(convertingGrade), for: .touchUpInside)
        view.addSubview(convertButton)
        convertButton.translatesAutoresizingMaskIntoConstraints = false
        convertButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        convertButton.topAnchor.constraint(equalTo: heightTextField.bottomAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        answerLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        answerLabel.topAnchor.constraint(equalTo: convertButton.bottomAnchor, constant: 20).isActive = true
        
    }
    @objc func convertingGrade() {
        //  
        
        var radius : Int = Int(radiusTextField.text!)!
        var height : Int = Int(heightTextField.text!)!
            
        
        var volume = calculatingVolume(radiusEntered : Float(radius), heightEntered : Float(height))
        
        answerLabel.text = String(format: "The volume is %.02f cm^3", volume)
            
        
    }
        override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
