//
//  ViewController.swift
//  CollectionViewBlog
//
//  Created by HanhvanTranon 7/3/18.
//  Copyright © 2018 HanhvanTran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    let _fLeftAndRightPadding:CGFloat=32.0
    let _nNumberItemPerRow:CGFloat=3.0
    let _fHeight:CGFloat=30.0
    @IBOutlet weak var collectionView: UICollectionView!
    let store = DataStore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
       // collectionView.backgroundColor=UIColor.white
//        store.getBookImages {
//            self.collectionView.reloadSections(IndexSet(integer: 0))
//        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return store.audiobooks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
        
        let book = store.audiobooks[indexPath.row]
        
        cell.displayContent(image: store.images[indexPath.row], title: book.name)

        return cell
        
    }
    
}

