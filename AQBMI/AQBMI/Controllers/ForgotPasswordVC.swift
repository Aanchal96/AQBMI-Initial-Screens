//
//  ForgotPasswordVC.swift
//  AQBMI
//
//  Created by Appinventiv on 29/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ForgotPasswordVC: UIViewController {
    
    var isTimerRunning = false
    var countdownTimer: Timer!
    var totalTime = 60
    
    //MARK:--> IBOutlets
    //===================
    @IBOutlet weak var forgotVCNavigationView: UIView!
    @IBOutlet weak var forgotVCNavigationTitle: UILabel!
    @IBOutlet weak var forgotVCheadingView: UIView!
    @IBOutlet weak var forgotVCheadingLabel: UILabel!
    @IBOutlet weak var forgotVCTFView: UIView!
    @IBOutlet weak var countryCodeBtn: UIButton!
    @IBOutlet weak var mobileOrEmailTF: UITextField!
    @IBOutlet weak var sendBtn: UIButton!
    @IBOutlet weak var verificationCodeTF: UITextField!
    @IBOutlet weak var resendBtn: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var verifyNowBtn: UIButton!
    
    //MARK:--> IBActions
    //===================
    @IBAction func countryCodeBtn(_ sender: Any) {
    }
    @IBAction func sendBtn(_ sender: Any) {
        self.startTimer()
    }
    @IBAction func resendBtn(_ sender: Any) {
        self.startTimer()
    }
    @IBAction func verifyNowBtn(_ sender: Any) {
    }
    
    //MARK:--> SignUp VC Life Cycle
    //===================
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        self.verifyNowBtn.layer.cornerRadius = CGFloat(CornerRadius().corner)
        self.setPlaceholder()
        self.view.backgroundColor = AppColors.themeBlackColor
        self.forgotVCNavigationTitle.font = AppFonts.Poppins_Medium.withSize(16.0)
        self.forgotVCNavigationTitle.textColor = AppColors.whiteTwoColor //rgb 255 255 255
        self.forgotVCheadingView.backgroundColor = AppColors.darkGreyColor //rgb 20 28 33
        self.forgotVCheadingLabel.font = AppFonts.Poppins_Regular.withSize(12.5)
        self.forgotVCheadingLabel.textColor = AppColors.pinkishGrayColor //rgb 195 195 195
        self.mobileOrEmailTF.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.mobileOrEmailTF.textColor = AppColors.whiteTwoColor
        self.verificationCodeTF.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.verificationCodeTF.textColor = AppColors.whiteTwoColor
        self.sendBtn.titleLabel?.font = AppFonts.Poppins_Regular.withSize(13.0)
        self.sendBtn.setTitleColor(AppColors.themeDarkSkyBlueColor, for: .normal) //rgb 36 160 214
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
extension ForgotPasswordVC{
    func setPlaceholder(){
        self.mobileOrEmailTF.attributedPlaceholder = NSAttributedString(string: "Mobile Number/Email address",
                                                                        attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
        self.verificationCodeTF.attributedPlaceholder = NSAttributedString(string: "Verification Code",
                                                                           attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
    }
}

//MARK:--> Creating Timer for Send Btn
//===================
extension ForgotPasswordVC{
    func startTimer() {
        self.sendBtn.isEnabled = false
        self.sendBtn.alpha = 0.3
        self.resendBtn.isEnabled = false
        self.resendBtn.alpha = 0.3
        countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        timerLabel.text = "\(timeFormatted(totalTime))"
        self.timerLabel.isHidden = false
        if totalTime != 0 {
            totalTime -= 1
        } else {
            endTimer()
        }
    }
    
    func endTimer() {
        countdownTimer.invalidate()
        self.totalTime = 0
        self.timerLabel.isHidden = true
        self.sendBtn.isEnabled = true
        self.sendBtn.alpha = 1
        self.resendBtn.isEnabled = true
        self.resendBtn.alpha = 1
    }
    
    func timeFormatted(_ totalSeconds: Int) -> String {
        let seconds: Int = totalSeconds % 60
        let minutes: Int = (totalSeconds / 60) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

extension ForgotPasswordVC: UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.verifyNowBtn.isEnabled = true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if self.mobileOrEmailTF.isFirstResponder{
            self.verifyNowBtn.becomeFirstResponder()
        }
        return true
    }
}
