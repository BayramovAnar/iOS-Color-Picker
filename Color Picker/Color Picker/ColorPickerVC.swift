//
//  ColorPickerVC.swift
//  Color Picker
//
//  Created by Anar Bayramov on 5/8/22.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate: ColorTransferDelegate? = nil
    
    /*
     delegate will be used to store 2 values from buttons.
     We need to instanciate the property when we press + button.
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func colorBtnWasPressed(sender: UIButton){
        if delegate != nil{
            delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
