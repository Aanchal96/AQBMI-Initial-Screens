//
//  SuccessfulPopUpVC.swift
//  AQBMI
//
//  Created by Appinventiv on 30/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class SuccessfulPopUpVC: UIViewController {

    //MARK:--> IBOutlets
    //===================
    @IBOutlet weak var successfulPopUpView: UIView!
    @IBOutlet weak var successPopUpMessageLabel: UILabel!
    @IBOutlet weak var successPopUpSecondMessageLabel: UILabel!
    @IBOutlet weak var successPopUpOkBtn: UIButton!
    
    //MARK:--> Successful PopUp VC Life Cycle
    //===================
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLayoutSubviews() {
        self.successfulPopUpView.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.successfulPopUpView.backgroundColor = AppColors.whiteTwoColor
        self.successPopUpMessageLabel.font = AppFonts.Poppins_Medium.withSize(17.0)
        self.successPopUpMessageLabel.textColor = AppColors.almostBlackColor //rgb 13 21 24
        self.successPopUpSecondMessageLabel.font = AppFonts.Poppins_Regular.withSize(17.0)
        self.successPopUpSecondMessageLabel.textColor = AppColors.charcoalGreyColor //rgb 53 63 71
        self.successPopUpOkBtn.titleLabel?.font = AppFonts.Poppins_Medium.withSize(17.0)
        self.successPopUpOkBtn.setTitleColor(AppColors.themeDarkSkyBlueColor, for: .normal) //rgb 36 160 214
    }
}
