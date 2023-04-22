//
//  MusicVC.swift
//  MallelaGautamEntertainmentApp
//
//  Created by Mallela,Gautam Sagar on 4/19/23.
//

import UIKit

class MusicVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var songsSections = ["Latest", "Favotites"]
    var favouriteSongs: Set<Music> = []
    var songs: [Music] = []
    var i: Int = 0
    @IBOutlet weak var musicTV: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.musicTV.delegate = self
        self.musicTV.dataSource = self
//        musicTV.register(MusicVC.self, forCellReuseIdentifier: "musicSegue")
        self.musicTV.reloadData()
       
    }

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.transform = CGAffineTransform(translationX: 0, y: tableView.bounds.height)
        UIView.animate(withDuration: 0.5, delay: 0.05 * Double(indexPath.row), options: [.curveEaseInOut], animations: {
            cell.transform = CGAffineTransform(translationX: 0, y: 0)
        }, completion: nil)
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        switch segue.identifier{
                case "musicSegue":
                    let destination = segue.destination as? PlayMusicVC
            destination?.videoId = musics[(musicTV.indexPathForSelectedRow?.row)!].videoId
            
        default:
            break
        }
     //musicSegue
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        songsSections[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return musics.count
        }
        else{
            return favouriteSongs.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        songs = Array(favouriteSongs)
        let cell = self.musicTV.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath)
        if(indexPath.section == 0){
            cell.textLabel?.text = musics[indexPath.row].title
            cell.detailTextLabel?.text = musics[indexPath.row].composer
            return cell
        }
        else{
            if songs.count > 0{
                cell.textLabel?.text = songs[indexPath.row].title
                cell.detailTextLabel?.text = songs[indexPath.row].composer
                
                return cell
            }
            return cell
        }
    }
    
    
    
    //swipe button for adding song to favourite
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        if indexPath.section == 0{
            let addToFav =  UIContextualAction(style: .normal, title: "♡") { [weak self] (action, view, completionHandler) in
                self?.addToFavourites(index: indexPath.row)
                //            completionHandler(true)
                
            }
            addToFav.backgroundColor = .purple
            return UISwipeActionsConfiguration(actions: [addToFav])
        }
        else{
            let removeFromFav =  UIContextualAction(style: .normal, title: "Remove From Fav") { [weak self] (action, view, completionHandler) in
                self?.removeFromFavourites(index: indexPath.row)
                //            completionHandler(true)
                
            }
            removeFromFav.backgroundColor = .red
            return UISwipeActionsConfiguration(actions: [removeFromFav])
        }
    }


    func addToFavourites(index: Int){
        favouriteSongs.insert(musics[index])
        print(favouriteSongs)
        self.musicTV.reloadData()
    }

    func removeFromFavourites(index: Int){
        songs = Array(favouriteSongs)
        favouriteSongs.remove(songs[index])
        print(favouriteSongs)
        self.musicTV.reloadData()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        musicTV.reloadData()
    }

}
