//
// SignUpVC.swift
//  AQBMI
//
//  Created by Appinventiv on 29/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
    
    let signUpPlaceholders = ["Full Name","Email ID","Mobile Number","Password"]
    
    //MARK:-->IBOutlets
    //===================
    @IBOutlet weak var signUpTableView: UITableView!
    @IBOutlet weak var signUpFooterBtn: UIButton!
    @IBAction func signUpFooterBtn(_ sender: Any) {
    }
    
    //MARK:--> SignUp VC Life Cycle
    //===================
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTable()
        
        //MARK:--> Register Nibs
        //===================
        signUpTableView.register(UINib(nibName: "TextFieldCell", bundle: nil), forCellReuseIdentifier: "TextFieldCellID")
        signUpTableView.register(UINib(nibName: "FBGoogleCell", bundle: nil), forCellReuseIdentifier: "FBGoogleCellID")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLayoutSubviews() {
        self.signUpTableView.backgroundColor = AppColors.themeBlackColor
        self.signUpFooterBtn.titleLabel?.font = AppFonts.Poppins_Regular.withSize(14.0)
        self.signUpFooterBtn.setTitleColor(AppColors.whiteTwoColor, for: .normal)
    }
}

//MARK:--> Sign Up Table view Methods
//===================
extension SignUpVC: UITableViewDelegate, UITableViewDataSource{
    func setTable(){
        self.signUpTableView.delegate = self
        self.signUpTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CreateAccountCellID") as! CreateAccountCell
            return cell
        case 1,2,3,4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldCellID", for: indexPath) as! TextFieldCell
                cell.fullNameTF.attributedPlaceholder = NSAttributedString(string:signUpPlaceholders[indexPath.row-1],attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
            return cell
            
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SignUpBtnCellID", for: indexPath) as! SignUpBtnCell
            return cell
            
        case 6:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FBGoogleCellID", for: indexPath) as! FBGoogleCell
            return cell
            
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 80
        case 5:
            return 130
        case 6:
            return 130
        default:
            return 75
        }
    }
}
