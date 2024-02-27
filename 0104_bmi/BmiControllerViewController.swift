//
//  BmiControllerViewController.swift
//  0104先生の例
//
//  Created by spark-03 on 2024/01/04.
//

import UIKit

class BmiControllerViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    
    var bmiResult: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let bmi = bmiResult {
        switch bmi  {
        case ..<18.5 :
            self.answerLabel.text = "あなたのBMIは\n\(bmi)です\nやや痩せ型です"
            answerLabel.textColor = UIColor.black
        case ..<25 :
            self.answerLabel.text = "あなたのBMIは\n\(bmi)です\n普通型です"
            answerLabel.textColor = UIColor.black
        case ..<35 :
            self.answerLabel.text = "あなたのBMIは\n\(bmi)です\nやや肥満型です"
            answerLabel.textColor = UIColor.black
        case 35... :
            self.answerLabel.text = "あなたのBMIは\n\(bmi)です\n肥満型です"
            answerLabel.textColor = UIColor.black
        default :
            break
        }
        
        }else{
        self.answerLabel.text = "数値を半角で入力してください"
        answerLabel.textColor = UIColor.red
    }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
