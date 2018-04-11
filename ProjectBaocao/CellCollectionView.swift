//
//  CellCollectionView.swift
//  ProjectBaocao
//
//  Created by Le Tan Tien on 3/19/18.
//  Copyright © 2018 HanhvanTran. All rights reserved.
//
import UIKit
import Foundation
class CellCollectionView: UICollectionViewCell
{
    @IBOutlet weak var imageViewCell: UIImageView!
    @IBOutlet weak var lblNameCell: UILabel!
    func displayContent(image: UIImage, title: String) {
        imageViewCell.image = image
        lblNameCell.text = title
    }
    
}
