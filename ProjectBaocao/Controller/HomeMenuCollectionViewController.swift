//
//  HomeMenuCollectionViewController.swift
//  ProjectBaocao
//
//  Created by HanhvanTran on 3/19/18.
//  Copyright © 2018 HanhvanTran. All rights reserved.
//

import UIKit
private let reuseIdentifier = "cellHomeMenu"

class HomeMenuCollectionViewController: UICollectionViewController, UISearchBarDelegate {
    var _array:Array<String> = []
   
    @IBOutlet var collectionViewHomeMenu: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let _uiSearchbar = UISearchBar()
        _uiSearchbar.showsCancelButton=false;
        _uiSearchbar.text = "";
        _uiSearchbar.placeholder = "Tìm kiếm"
        _uiSearchbar.delegate = self
        
        _uiSearchbar.resignFirstResponder()
        self.navigationItem.titleView = _uiSearchbar
        //  self.navigationItem.searchController()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view
        _array = ["TrangChu-2" , "TrangChu2"]
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 18
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HomeMenuCollectionViewCell
        let _strImage = (indexPath.row % 2 == 0 ? "TrangChu-2" : "TrangChu2")
        cell.imageView.image = UIImage(named:_strImage)
//        cell.layer.borderWidth = 0.5
//        cell.layer.cornerRadius = 25
//        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.imageView.tintColor = UIColor.blue
      //  cell.lblNameCell.text = ""
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
