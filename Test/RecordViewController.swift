//
//  RecordViewController.swift
//  Test
//
//  Created by Акжан Калиматов on 08.07.2022.
//

import UIKit

class RecordViewController: UIViewController {

    @IBOutlet weak var recordLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let record = UserDefaults.standard.integer(forKey: KeyUserDefaults.recordGame)
        
        if record != 0 {
            recordLabel.text = "Ваш рекорд - \(record)"
        }else {
            recordLabel.text = "Рекорд не установлен"
        }
    }
    
    @IBAction func closeVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    


}
