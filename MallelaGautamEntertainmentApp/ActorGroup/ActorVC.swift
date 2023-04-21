//
//  ViewController.swift
//  MallelaGautamEntertainmentApp
//
//  Created by Mallela,Gautam Sagar on 4/14/23.
//

import UIKit
import SDWebImage





class ActorVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var actorTableView: UITableView!
    var i:IndexPath = IndexPath()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.actorTableView.register(UINib(nibName: "ActorCVCell", bundle: nil), forCellReuseIdentifier: "actorCell")

        self.actorTableView.delegate = self
        self.actorTableView.dataSource = self
////
//        let nib = UINib(nibName: "ActorCVCell", bundle: nil)
//            actorTableView.register(nib, forCellReuseIdentifier: "actorCell")
        
        self.actorTableView.register(UINib(nibName: "ActorCell", bundle: nil), forCellReuseIdentifier: "actorCell")
        
//        let imageView = SDAnimatedImageView()
//        let animatedImage = SDAnimatedImage(named: "image.gif")
//        imageView.image = animatedImage
    }


    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      return  "List of actors"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        actors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = actorTableView.dequeueReusableCell(withIdentifier: "actorCell", for: indexPath) as! ActorCell
            
            // Set the actor's name and years active
        cell.actorName.text = actors[indexPath.row].fullName
        cell.activeYears.text = actors[indexPath.row].yearsActive
//        cell.ActorCellIV.image = UIImage(named: )
        
        switch indexPath.row{
        case 0:
            cell.ActorCellIV.image = UIImage(named: "AlluArjun")
            if let _ = cell.ActorCellIV.image{
                break
            } else {
                cell.ActorCellIV.sd_setImage(with: URL(string: actors[indexPath.row].actorImageName), placeholderImage: UIImage(named: "alluarjun.png"))
            }
            
            

        case 1:
            cell.ActorCellIV.image = UIImage(named: "MaheshBabu")
            if let _ = cell.ActorCellIV.image{
                break
            } else {
                cell.ActorCellIV.sd_setImage(with: URL(string: actors[indexPath.row].actorImageName), placeholderImage: UIImage(named: "maheshbabu.png"))
                
            }
                
            
        case 2:
            cell.ActorCellIV.image = UIImage(named: "Gopichand")
            if let _ = cell.ActorCellIV.image{
                break
            } else {
                cell.ActorCellIV.sd_setImage(with: URL(string: actors[indexPath.row].actorImageName), placeholderImage: UIImage(named: "gopichand.png"))
            }
        case 3:
            cell.ActorCellIV.image = UIImage(named: "Prabhas")
            if let _ = cell.ActorCellIV.image{
                break
            } else {
                cell.ActorCellIV.sd_setImage(with: URL(string: actors[indexPath.row].actorImageName), placeholderImage: UIImage(named: "prabhas.png"))
            }
        case 4:
            cell.ActorCellIV.image = UIImage(named: "Vijay")
            if let _ = cell.ActorCellIV.image{
                break
            } else {
                cell.ActorCellIV.sd_setImage(with: URL(string: actors[indexPath.row].actorImageName), placeholderImage: UIImage(named: "vijay.png"))
                
            }
        default:
            break
            
        }
            
            return cell
    }
    
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print("inside actor segue")
        i = indexPath
        performSegue(withIdentifier: "actorRatingSegue", sender: self)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("inside film segue")
        i = indexPath
        performSegue(withIdentifier: "filmSegue", sender: self)
   }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier{
                case "filmSegue":
                    let destination = segue.destination as? FilmographyVC
            
//            destination?.videoId = actors[(actors.indexPathForSelectedRow?.row)!]
        case "actorRatingSegue":
            let destination = segue.destination as! ActorRatingVC
            destination.index = i.row
            switch i.row{
            case 0:
                destination.actorimage = UIImage(named: "AlluArjun")!
            case 1:
                destination.actorimage = UIImage(named: "MaheshBabu")!
            case 2:
                destination.actorimage = UIImage(named: "Gopichand")!
            case 3:
                destination.actorimage = UIImage(named: "Prabhas")!
            case 4:
                destination.actorimage = UIImage(named: "Vijay")!
            default:
                break
            }
           
        default:
            break
        }
    }
}

