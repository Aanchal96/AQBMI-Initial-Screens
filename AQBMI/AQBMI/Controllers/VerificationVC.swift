//
//  VerificationVC.swift
//  AQBMI
//
//  Created by Appinventiv on 30/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class VerificationVC: UIViewController {
    
    //MARK:--> IBOutlets
    //===================
    @IBOutlet weak var verificationNavigationView: UIView!
    @IBOutlet weak var verificationNavigationTitle: UILabel!
    @IBOutlet weak var verificationheadingView: UIView!
    @IBOutlet weak var verificationheadingLabel: UILabel!
    @IBOutlet weak var forgotVCTFView: UIView!
    @IBOutlet weak var countryCodeBtn: UIButton!
    @IBOutlet weak var mobileNumberTF: UITextField!
    @IBOutlet weak var editBtn: UIButton!
    @IBOutlet weak var verificationCodeTF: UITextField!
    @IBOutlet weak var resendBtn: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var verifyNowBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidLayoutSubviews() {
        self.verifyNowBtn.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.setPlaceholder()
        self.view.backgroundColor = AppColors.themeBlackColor
        self.verificationNavigationTitle.font = AppFonts.Poppins_Medium.withSize(16.0)
        self.verificationNavigationTitle.textColor = AppColors.whiteTwoColor //rgb 255 255 255
        self.verificationheadingView.backgroundColor = AppColors.darkGreyColor //rgb 20 28 33
        self.verificationheadingLabel.font = AppFonts.Poppins_Regular.withSize(12.5)
        self.verificationheadingLabel.textColor = AppColors.pinkishGrayColor //rgb 195 195 195
        self.mobileNumberTF.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.mobileNumberTF.textColor = AppColors.whiteTwoColor //rgb 255 255 255
        self.editBtn.titleLabel?.font = AppFonts.Poppins_Regular.withSize(13.0)
        self.editBtn.setTitleColor(AppColors.themeDarkSkyBlueColor, for: .normal)
        self.verificationCodeTF.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.verificationCodeTF.textColor = AppColors.whiteTwoColor //rgb 255 255 255
        self.resendBtn.titleLabel?.font = AppFonts.Poppins_Regular.withSize(13.0)
        self.resendBtn.setTitleColor(AppColors.coolGreyColor, for: .normal)
        self.timerLabel.font = AppFonts.Poppins_Regular.withSize(13.0)
        self.timerLabel.textColor = AppColors.whiteTwoColor
        self.verifyNowBtn.titleLabel?.font = AppFonts.Poppins_Medium.withSize(17.0)
        self.verifyNowBtn.setTitleColor(AppColors.whiteTwoColor, for: .normal) //rgb 255 255 255
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

//MARK:--> Editing TextFields Placeholders
//===================
extension VerificationVC{
    func setPlaceholder(){
        self.mobileNumberTF.attributedPlaceholder = NSAttributedString(string: "Enter Mobile Number",
                                                                        attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
        self.verificationCodeTF.attributedPlaceholder = NSAttributedString(string: "Verification Code",
                                                                           attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
    }
}
