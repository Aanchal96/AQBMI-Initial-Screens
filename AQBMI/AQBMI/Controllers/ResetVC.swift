//
//  ResetVC.swift
//  AQBMI
//
//  Created by Appinventiv on 30/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ResetVC: UIViewController {

    //MARK:--> IBOutlets
    //===================
    @IBOutlet weak var resetVCNavigationView: UIView!
    @IBOutlet weak var resetVCNavigationTitle: UILabel!
    @IBOutlet weak var resetVCheadingView: UIView!
    @IBOutlet weak var resetVCheadingLabel: UILabel!
    @IBOutlet weak var newPassTF: UITextField!
    @IBOutlet weak var doneBtn: UIButton!
    
    //MARK:--> SignUp VC Life Cycle
    //===================
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLayoutSubviews() {
        self.doneBtn.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.setPlaceholder()
        self.view.backgroundColor = AppColors.themeBlackColor
        self.resetVCNavigationTitle.font = AppFonts.Poppins_Medium.withSize(16.0)
        self.resetVCNavigationTitle.textColor = AppColors.whiteTwoColor //rgb 255 255 255
        self.resetVCheadingView.backgroundColor = AppColors.darkGreyColor //rgb 20 28 33
        self.resetVCheadingLabel.font = AppFonts.Poppins_Regular.withSize(12.5)
        self.resetVCheadingLabel.textColor = AppColors.pinkishGrayColor //rgb 195 195 195
        self.newPassTF.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.newPassTF.textColor = AppColors.whiteTwoColor //rgb 255 255 255
        self.doneBtn.titleLabel?.font = AppFonts.Poppins_Medium.withSize(17.0)
        self.doneBtn.setTitleColor(AppColors.whiteTwoColor, for: .normal) //rgb 255 255 255
    }
}

//MARK:--> Editing TextFields Placeholders
//===================
extension ResetVC{
    func setPlaceholder(){
        self.newPassTF.attributedPlaceholder = NSAttributedString(string: "New Password",
                                                                       attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
    }
}
