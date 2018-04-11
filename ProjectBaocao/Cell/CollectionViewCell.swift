//
//  CollectionViewCell.swift
//  ProjectBaocao
//
//  Created by Le Tan Tien on 3/19/18.
//  Copyright © 2018 HanhvanTran. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewHome: UIImageView!
    
    @IBOutlet weak var lblNameHome: UILabel!
    //    @IBOutlet var bookImage: UIImageView!
//    @IBOutlet var bookLabel: UILabel!

    func displayContent(image: UIImage, title: String) {
        imageViewHome.image = image
        lblNameHome.text = title
    }
}
