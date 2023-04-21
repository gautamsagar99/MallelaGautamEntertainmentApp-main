//
//  ActorCell.swift
//  MallelaGautamEntertainmentApp
//
//  Created by Mallela,Gautam Sagar on 4/20/23.
//

import UIKit


class ActorCell: UITableViewCell {

    @IBOutlet weak var ActorCellIV: UIImageView!{
        didSet{
            defaultAttributes(view: ActorCellIV)
        }
    }
    
    @IBOutlet weak var actorName: UILabel!
    
    @IBOutlet weak var activeYears: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    private func defaultAttributes(view: UIView){
        let imageViewHeight = CGFloat(2.0) // You can adjust the margin as per your requirement
           ActorCellIV.frame = CGRect(x: 8, y: 8, width: imageViewHeight, height: imageViewHeight)
      
        view.layer.cornerRadius = 5.0
        view.layer.masksToBounds = true
        view.layer.borderWidth = 1.0
        view.layer.borderColor = UIColor.black.cgColor
        
    }
}
