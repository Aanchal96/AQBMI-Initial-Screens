//
//  ThankYouPopUpVC.swift
//  AQBMI
//
//  Created by Appinventiv on 30/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ThankYouPopUpVC: UIViewController {

    //MARK:--> IBOutlets
    //===================
    @IBOutlet weak var thankYouPopUpView: UIView!
    @IBOutlet weak var thankYouPopUpTickImage: UIImageView!
    @IBOutlet weak var thankYouPopUpLabel: UILabel!
    @IBOutlet weak var thankYouMessageLabel: UILabel!
    @IBOutlet weak var thankYouPopUpOkBtn: UIButton!
    
    //MARK:--> ThankYou PopUp VC Life Cycle
    //===================
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLayoutSubviews() {
        self.thankYouPopUpView.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.thankYouPopUpView.backgroundColor = AppColors.whiteTwoColor
        self.thankYouPopUpLabel.font = AppFonts.Poppins_Medium.withSize(17.0)
        self.thankYouPopUpLabel.textColor = AppColors.almostBlackColor //rgb 13 21 24
        self.thankYouMessageLabel.font = AppFonts.Poppins_Regular.withSize(17.0)
        self.thankYouMessageLabel.textColor = AppColors.charcoalGreyColor//rgb 53 63 71
        self.thankYouPopUpOkBtn.titleLabel?.font = AppFonts.Poppins_Medium.withSize(17.0)
        self.thankYouPopUpOkBtn.setTitleColor(AppColors.themeDarkSkyBlueColor, for: .normal) //rgb 36 160 214
    }
}
