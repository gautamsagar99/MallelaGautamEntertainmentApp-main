//
//  FilmographyVC.swift
//  MallelaGautamEntertainmentApp
//
//  Created by Mallela,Gautam Sagar on 4/17/23.
//

import UIKit


class FilmographyVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let images = [UIImage(named: "AlluArjun"), UIImage(named: "AlluArjun"), UIImage(named: "AlluArjun"), UIImage(named: "AlluArjun"), UIImage(named: "AlluArjun"), UIImage(named: "AlluArjun"),UIImage(named: "AlluArjun")]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmCellSegue", for: indexPath) as? PosterCVC
        cell?.moviePosterIV.image = images[indexPath.item]
        return cell!
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
              if indexPath.item == 2 {
                  // Third image cell in the section
                  return CGSize(width: collectionView.bounds.width, height: 200)
              } else {
                  // First two image cells in the section
                  return CGSize(width: collectionView.bounds.width / 2, height: 200)
              }
          }
    
//
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
             return 8
         }
//
         func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
             return 8
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
//    class MyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//
//        let images = [UIImage(named: "image1"), UIImage(named: "image2"), UIImage(named: "image3")]
//
//        func numberOfSections(in collectionView: UICollectionView) -> Int {
//            return 1
//        }
//
//        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//            return 3
//        }
//
//        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmSegue", for: indexPath) as! ImageCell
//            cell.imageView.image = images[indexPath.item]
//            return cell
//        }
//
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//            if indexPath.item == 2 {
//                // Third image cell in the section
//                return CGSize(width: collectionView.bounds.width, height: 200)
//            } else {
//                // First two image cells in the section
//                return CGSize(width: collectionView.bounds.width / 2, height: 200)
//            }
//        }
//
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//            return 0
//        }
//
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//            return 0
//        }
//    }
//
//    class ImageCell: UICollectionViewCell {
//
//        @IBOutlet weak var imageView: UIImageView!
//
//    }
//
//
//
//
