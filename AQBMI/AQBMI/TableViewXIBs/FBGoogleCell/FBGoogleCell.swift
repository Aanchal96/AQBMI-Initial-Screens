//
//  FBGoogleCell.swift
//  AQBMI
//
//  Created by Appinventiv on 29/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class FBGoogleCell: UITableViewCell {
    
    //MARK:--> IBOutlets
    //===================
    @IBOutlet weak var continueLabel: UILabel!
    @IBOutlet weak var fBBtn: UIButton!
    @IBOutlet weak var googleBtn: UIButton!
    
    //MARK:--> IBActions
    //===================
    @IBAction func fBBtn(_ sender: Any) {
    }
    @IBAction func googleBtn(_ sender: Any) {
    }
    
    //MARK:--> FBGoogleCell Life Cycle
    //===================
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        self.continueLabel.font = AppFonts.Poppins_Light.withSize(14.0)
        self.continueLabel.textColor = AppColors.battleshipGreyColor //rgb 106 118 124
        self.fBBtn.titleLabel?.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.fBBtn.setTitleColor(AppColors.whiteTwoColor, for: .normal)
        self.fBBtn.backgroundColor = AppColors.darkGreyColor
        self.googleBtn.titleLabel?.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.googleBtn.setTitleColor(AppColors.whiteTwoColor, for: .normal)
        self.fBBtn.backgroundColor = AppColors.darkGreyColor
    }
}
