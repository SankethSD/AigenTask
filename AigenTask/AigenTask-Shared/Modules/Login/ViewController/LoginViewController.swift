//
//  ViewController.swift
//  AigenTask
//
//  Created by Sanketh S D on 12/5/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var introView: UIView!
    @IBOutlet weak var loaderView: UIView!
    
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    
    @IBOutlet weak var walkThruImg: UIImageView!
    @IBOutlet weak var walkThruView1: RoundedviewWithBorder!
    @IBOutlet weak var walkThruView2: RoundedviewWithBorder!
    @IBOutlet weak var walkThruView3: RoundedviewWithBorder!
    @IBOutlet weak var nextBtn: RoundedButtonWithBorder!
    @IBOutlet weak var getStartedBtn: RoundedButtonWithBorder!
    @IBOutlet weak var backBtn: RoundedButtonWithBorder!
    @IBOutlet weak var walkThruTitleLabel: UILabel!
    
    let userDefaults = UserDefaults.standard
    var pageNo: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loaderView.isHidden = false
        if userDefaults.bool(forKey: UserDefaultsKey.isLoggedIn){
            performSegue(withIdentifier: PerformSegue.loginToDashboard, sender: self)
        }else{
            UserDetails.createNewUser(fullName: Credentials.name, email: Credentials.email, password: Credentials.password)
            LoadPages()
        }
        
    }
    
    @IBAction func loginBtnClicked(_ sender: Any) {
        if(emailTxtField.text == ""){
            showAlert(title: "Alert", message: "Please Enter a valid email ID!")
        }else if(passwordTxtField.text == ""){
            showAlert(title: "Alert", message: "Please Enter your password!")
        }else{
            checkLoginDetails()
        }
        
    }
    
    @IBAction func nextBtnClicked(_ sender: Any) {
        pageNo = pageNo + 1
        LoadPages()
    }
    
    @IBAction func getStartedBtnClicked(_ sender: Any) {
        pageNo = 1
        LoadPages()
        introView.isHidden = true
    }
    
    @IBAction func backBtnClicked(_ sender: Any) {
        pageNo = pageNo - 1
        LoadPages()
    }
    
    func checkLoginDetails(){
        let user = UserDetails.fetchUser()
        if(emailTxtField.text == user?.email){
            if(passwordTxtField.text == user?.password){
                print("LOGIN SUCCESSFUL!")
                userDefaults.set(true, forKey: UserDefaultsKey.isLoggedIn)
                self.performSegue(withIdentifier: PerformSegue.loginToDashboard, sender: self)
            }else{
                showAlert(title: "Alert", message: "Wrong Password!")
            }
        }else{
            showAlert(title: "Error", message: "Invalid Credentials!")
        }
    }
    
    func LoadPages(){
        if(pageNo == 1){
            backBtn.isHidden = true
            getStartedBtn.isHidden = true
            nextBtn.isHidden = false
            walkThruImg.image = UIImage.appAssetIcon(.searchCar)
            walkThruTitleLabel.text = "Browse listings"
            walkThruView1.backgroundColor = UIColor.appColor(.themeOrange)
            walkThruView2.backgroundColor = .white
            walkThruView3.backgroundColor = .white
        }else if(pageNo == 2){
            backBtn.isHidden = false
            getStartedBtn.isHidden = true
            nextBtn.isHidden = false
            walkThruImg.image = UIImage.appAssetIcon(.addCar)
            walkThruTitleLabel.text = "Create your own listing"
            walkThruView1.backgroundColor = .white
            walkThruView2.backgroundColor = UIColor.appColor(.themeOrange)
            walkThruView3.backgroundColor = .white
        }else{
            backBtn.isHidden = false
            getStartedBtn.isHidden = false
            nextBtn.isHidden = true
            walkThruImg.image = UIImage.appAssetIcon(.callCar)
            walkThruTitleLabel.text = "Contact lister"
            walkThruView1.backgroundColor = .white
            walkThruView2.backgroundColor = .white
            walkThruView3.backgroundColor = UIColor.appColor(.themeOrange)
        }
        loaderView.isHidden = true
    }
    
}

