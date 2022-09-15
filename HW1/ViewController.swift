//
//  ViewController.swift
//  HW1
//
//  Created by Anton Zaripov on 11.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var views: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeColorButton(_ sender: Any) {
        let button = sender as? UIButton
        button?.isEnabled = false;
        var setOfColors = Set<UIColor>()
        while setOfColors.count < views.count{
            setOfColors.insert(
                UIColor(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1),
                    alpha: 1)
            )
        }
        for view in views{
            view.layer.cornerRadius = 10
            UIView.animate(withDuration: 1, animations: {
                view.backgroundColor = setOfColors.popFirst()
            }) { completion in
                button?.isEnabled = true}
        }
    }

}

