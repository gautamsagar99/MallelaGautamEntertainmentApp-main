//
//  FilmographyVC.swift
//  MallelaGautamEntertainmentApp
//
//  Created by Mallela,Gautam Sagar on 4/17/23.
//

import UIKit


class FilmographyVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var images = [""]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmCellSegue", for: indexPath) as? PosterCVC
        cell?.moviePosterIV.image = UIImage(named: images[indexPath.item])
        cell?.moviePosterIV.contentMode = .scaleToFill
        cell?.moviePosterIV.clipsToBounds = true
        cell?.moviePosterIV.frame = (cell?.contentView.frame)!
        
        return cell!
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print(indexPath.item)
        if indexPath.item == 0 &&  indexPath.item == 5{
            // Third image cell in the section
            return CGSize(width: 100, height: 400)
        
              } else {
                  // First two imxage cells in the section
                  return CGSize(width: collectionView.bounds.width / 2, height: 200)
              }
          }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected \(indexPath)")
    }
    

    
    @IBOutlet weak var moviesCV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.moviesCV.delegate = self
        self.moviesCV.dataSource = self
        
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        //        moviesCV.dequeueReusableCell(withReuseIdentifier: "PosterCVC", for: IndexPath)
    }
    
    
}
