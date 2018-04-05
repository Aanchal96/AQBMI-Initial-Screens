//
//  SurveyInfoPopUpVC.swift
//  AQBMI
//
//  Created by Appinventiv on 30/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class SurveyInfoPopUpVC: UIViewController {

    //MARK:--> IBOutlets
    //===================
    @IBOutlet weak var surveyInfoPopUpView: UIView!
    @IBOutlet weak var surveyInfoPopUpCross: UIButton!
    @IBOutlet weak var surveyInfoTextView: UITextView!
    
    //MARK:--> BMISurvey PopUp VC Life Cycle
    //===================
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLayoutSubviews() {
        self.surveyInfoPopUpView.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.surveyInfoPopUpView.backgroundColor = AppColors.whiteTwoColor
        self.surveyInfoTextView.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.surveyInfoTextView.textColor = AppColors.charcoalGreyColor //rbg 53 63 71
    }
}
