//
//  HomeVC.swift
//  MallelaGautamEntertainmentApp
//
//  Created by Mallela,Gautam Sagar on 4/17/23.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var fullNameLBL: UILabel!
    @IBOutlet weak var emailLBL: UILabel!
    @IBOutlet weak var phoneLBL: UILabel!
    @IBOutlet weak var bioTextView: UITextView!
    @IBOutlet weak var profileIV: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.fullNameLBL.text = "Gautam Sagar Mallela"
        self.emailLBL.text = "s555619@nwmissouri.edu"
        self.phoneLBL.text = "98293782928"
//        self.bioTextView.text = "Hello I am gautam"
        
        
        
//        self.profileIV.image = UIImage(named: "person.fill")
        
        self.profileIV.layer.cornerRadius = 20.0
        self.profileIV.layer.masksToBounds = true

        // Set border width to 2.0
        self.profileIV.layer.borderWidth = 2.0

        // Set border color to (Red: 0, Green: 103, Blue: 71)
        self.profileIV.layer.borderColor = UIColor(red: 0/255, green: 103/255, blue: 71/255, alpha: 1.0).cgColor
//        self.profileIV.image = UIImage(named: "person.fill")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
