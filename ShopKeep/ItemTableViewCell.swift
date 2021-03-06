//
//  ItemTableViewCell.swift
//  ShopKeep
//
//  Created by Alex Fu on 11/29/18.
//  Copyright © 2018 Alex Fu. All rights reserved.
//

import UIKit

public class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var itemTextField: UITextField!
    @IBOutlet weak var stockLabel: UILabel!

    /*
     func configure(text: String?, placeholder: String) {
     itemTextField.text = text
     itemTextField.placeholder = placeholder

     itemTextField.accessibilityValue = text
     itemTextField.accessibilityLabel = placeholder

     itemTextField.autocapitalizationType = .words

     itemTextField.returnKeyType = .done
     }
     */
    func setCell(itemName: String?, stockString: String) {

        itemTextField.text = itemName
        stockLabel.text = stockString
        itemTextField.autocapitalizationType = .words
        itemTextField.returnKeyType = .done
        
        if stockString == "Out of Stock" {
            stockLabel.textColor = UIColor.red
        } else if stockString == "Unrecognized" {
            stockLabel.textColor = UIColor.blue
        }
    }


}
