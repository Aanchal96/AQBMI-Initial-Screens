//
//  TextFieldCell.swift
//  AQBMI
//
//  Created by Appinventiv on 29/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class TextFieldCell: UITableViewCell {
    
    //MARK:--> IBOutlets
    //===================
    @IBOutlet weak var fullNameTF: UITextField!
    @IBOutlet weak var fullNameBelowView: UIView!
    
    //MARK:--> TextFieldCell Life Cycle
    //===================
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        self.fullNameTF.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.fullNameTF.textColor = AppColors.whiteTwoColor //rgb 255 255 255
        self.fullNameBelowView.backgroundColor = AppColors.darkGreyColor
    }
}
