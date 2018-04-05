//
//  SignUpBtnCell.swift
//  AQBMI
//
//  Created by Appinventiv on 29/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class SignUpBtnCell: UITableViewCell {
    
    //MARK:--> IBOutlets
    //===================
    @IBOutlet weak var signUpBtn: UIButton!
    
    //MARK:--> IBActions
    //===================
    @IBAction func signUpBtn(_ sender: Any) {
    }
    
    //MARK:--> SignUp Cell Life Cycle
    //===================
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        self.signUpBtn.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.signUpBtn.titleLabel?.font = AppFonts.Poppins_Medium.withSize(17.0)
        self.signUpBtn.setTitleColor(AppColors.whiteTwoColor, for: .normal)
    }
}
