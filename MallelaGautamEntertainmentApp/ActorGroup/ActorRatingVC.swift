//
//  ActorRatingVC.swift
//  MallelaGautamEntertainmentApp
//
//  Created by Mallela,Gautam Sagar on 4/19/23.
//

import UIKit

class ActorRatingVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
//    var savedRatings = [String:String]
    
    
    @objc func actionLabelTapped() {
        overlayView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        pickerView.frame = CGRect(x: 0, y: self.view.frame.size.height - 300, width: self.view.frame.size.width, height: 300)
        overlayView.frame = pickerView.frame
        view.addSubview(overlayView)
        view.addSubview(pickerView)
        selectedLabel = "acting"
    }
     
    @objc func danceLabelTapped() {
        overlayView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        pickerView.frame = CGRect(x: 0, y: self.view.frame.size.height - 300, width: self.view.frame.size.width, height: 300)
        overlayView.frame = pickerView.frame
        view.addSubview(overlayView)
        view.addSubview(pickerView)
        selectedLabel = "dance"
    }
    @objc func episodesLabelTapped() {
        overlayView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        pickerView.frame = CGRect(x: 0, y: self.view.frame.size.height - 300, width: self.view.frame.size.width, height: 300)
        overlayView.frame = pickerView.frame
        view.addSubview(overlayView)
        view.addSubview(pickerView)
        selectedLabel = "episodes"
    }
    
    
    

    @IBOutlet weak var actorIMG: UIImageView!
    @IBOutlet weak var actingTF: UITextField!
    @IBOutlet weak var danceTF: UITextField!
    @IBOutlet weak var actionEpisodesTF: UITextField!
    @IBOutlet weak var overallPerformanceSlider: UISlider!
    var actorimage = UIImage()
    var index = 0
    var selectedLabel = ""

    let overlayView = UIView()
    
    
    let pickerView = UIPickerView()
    let data = ["🔥", "😵‍💫", "👽", "👌", "💩"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        // Enable user interaction with the pickerView
        pickerView.isUserInteractionEnabled = true
            
        actingTF.isUserInteractionEnabled = true
        actingTF.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(actionLabelTapped)))
        danceTF.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(danceLabelTapped)))
        actionEpisodesTF.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(episodesLabelTapped)))
     
        
      
      
        
        self.actorIMG.layer.cornerRadius = 20.0
        actorIMG.layer.masksToBounds = true

        // Set border width to 2.0
        actorIMG.layer.borderWidth = 2.0

        // Set border color to (Red: 0, Green: 103, Blue: 71)
        actorIMG.layer.borderColor = UIColor(red: 0/255, green: 103/255, blue: 71/255, alpha: 1.0).cgColor
        actorIMG.image = actorimage
        
        
        overallPerformanceSlider.minimumValue = 0
        overallPerformanceSlider.maximumValue = 10
        
        
        
        
//        actionEpisodesTF.text = actors[index].actionEpisodes
//        danceTF.text = actors[index].dancingSkills
//        overallPerformanceSlider.value = actors[index].overallRating
    }
    
    
    
   
    
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            print("in")
            return data.count
        }
        
        // MARK: - UIPickerViewDelegate
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            
            return data[row]
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            
            
            let selectedValue = data[row]
            // do something with the selected value, such as update the label text
            self.pickerView.removeFromSuperview()
            overlayView.removeFromSuperview()
            print(component)
            
            switch selectedLabel{
            case "acting":
                actingTF.text = selectedValue
            case "dance":
                danceTF.text = selectedValue
            case "episodes":
                actionEpisodesTF.text = selectedValue
            default:
                break
            }
            
              
             
        }
    
    
    @IBAction func save(_ sender: UIButton) {
        
//        actors[index].actionEpisodes = actionEpisodesTF.text!
//        actors[index].dancingSkills = danceTF.text!
//        actors[index].overallRating = overallPerformanceSlider.value
//        actors[index].yearsActive = actingTF.text!
        let alertController = UIAlertController(title: "Sucess ✅", message: "Ratings are saved", preferredStyle: .alert)

        // add an action to the alert
        let okAction = UIAlertAction(title: "Done", style: .default, handler: nil)
        alertController.addAction(okAction)

        // present the alert
        self.present(alertController, animated: true, completion: nil)
        
    }
    

    @IBAction func clearRatings(_ sender: UIBarButtonItem) {
        actionEpisodesTF.text = ""
        actingTF.text = ""
        danceTF.text = ""
        overallPerformanceSlider.value = 0
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        print("inside acting")
    }
    
    
    @objc func dismissPickerView() {
        pickerView.removeFromSuperview()
        overlayView.removeFromSuperview()
    }
    

}
