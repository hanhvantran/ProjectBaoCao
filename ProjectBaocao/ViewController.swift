//
//  ViewController.swift
//  ProjectBaocao
//
//  Created by Le Tan Tien on 3/19/18.
//  Copyright © 2018 HanhvanTran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {

    @IBOutlet weak var collectionViewHome: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionViewHome.dataSource=self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellView=collectionView.dequeueReusableCell(withReuseIdentifier: "cellViewHome", for: indexPath)
        cellView.backgroundColor=UIColor.red;
        return cellView
        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellViewHome", for: indexPath) as! CollectionViewCell
//
//        let book = store.audiobooks[indexPath.row]
//
//        cell.displayContent(image: store.images[indexPath.row], title: book.name)
//
//        return cell
        
    }
    



}

