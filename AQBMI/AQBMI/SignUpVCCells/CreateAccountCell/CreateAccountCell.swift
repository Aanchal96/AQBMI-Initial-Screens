//
//  CreateAccountCell.swift
//  AQBMI
//
//  Created by Appinventiv on 29/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class CreateAccountCell: UITableViewCell {
    
    //MARK:--> IBOutlets
    //===================
    @IBOutlet weak var createAccountLabel: UILabel!
    
    //MARK:--> CreateAccountCell Life Cycle
    //===================
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        self.createAccountLabel.font = AppFonts.Poppins_SemiBold.withSize(34.0)
        self.createAccountLabel.textColor = AppColors.themeDarkSkyBlueColor //rgb 36 160 214
    }
}
