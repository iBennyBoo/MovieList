//
//  CoolCell.swift
//  MovieList
//
//  Created by Ben Berman on 10/20/21.
//

import Foundation
import UIKit
public class CoolCell: UITableViewCell{
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var imageOutlet: UIImageView!
    func configure(name: String, rating: Int, year: Int, image: String){
        nameLabel.text = "\(name)"
        ratingLabel.text = "Rating: \(rating)%"
        yearLabel.text = "Year: \(year)"
        imageOutlet.image = UIImage(named: "\(image)")!
        
    }
}
