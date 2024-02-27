//
//  ViewController.swift
//  0104先生の例
//
//  Created by spark-03 on 2024/01/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var sendBmi: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightField.placeholder = "身長"
        weightField.placeholder = "体重"
    }
    
    @IBAction func resultButton(_ sender: Any) {
        if let heightText = heightField.text,
           let weightText = weightField.text,
           let heightNum = Double(heightText),
           let weightNum = Double(weightText) {
            
            let culcBmi = weightNum / ((heightNum / 100) * (heightNum / 100))
            let bmi = round(culcBmi * 10) / 10
            sendBmi = bmi
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier  == "bmi" {
            if let nextBmi = segue.destination as? BmiControllerViewController {
                nextBmi.bmiResult = sendBmi
                
            }
        }
    }
}
/*
 */
