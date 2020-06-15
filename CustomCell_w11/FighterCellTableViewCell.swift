//
//  FighterCellTableViewCell.swift
//  CustomCell_w11
//
//  Created by admin on 15/06/2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class FighterCellTableViewCell: UITableViewCell {

    @IBOutlet weak var fighterImageView: UIImageView!
    @IBOutlet weak var fighterNameLabel: UILabel!
    
    
    //is put in here to encapsulate
    func setFighter(fighter : Fighter){
        fighterImageView.image = fighter.image
        fighterNameLabel.text = fighter.name
    }
    
}
