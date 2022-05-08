//
//  ColorTransferDelegate.swift
//  Color Picker
//
//  Created by Anar Bayramov on 5/8/22.
//

import UIKit
import Foundation

protocol ColorTransferDelegate{
    //we need to create a func that accepts the textLabel and Background color of the button
    // to transfer those 2 values to the label and background of a ColorPickerVC
    
    func userDidChoose(color: UIColor, withName colorName: String)
}
