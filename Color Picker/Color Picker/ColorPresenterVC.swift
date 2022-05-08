//
//  ViewController.swift
//  Color Picker
//
//  Created by Anar Bayramov on 5/8/22.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {
    
    @IBOutlet weak var colorNameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLabel.text = colorName
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //this function waits us to tell it what to do when we change VC
        
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            colorPickerVC.delegate = self
        }
    }

}

