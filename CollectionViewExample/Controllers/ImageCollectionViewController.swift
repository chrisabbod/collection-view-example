//
//  ImageCollectionViewController.swift
//  CollectionViewExample
//
//  Created by Chris Abbod on 3/2/19.
//  Copyright © 2019 Chris Abbod. All rights reserved.
//

import UIKit

class ImageCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Register .xib file
        collectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "customImageCollectionViewCell")
    }
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    // make a cell for each cell index path
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customImageCollectionViewCell", for: indexPath as IndexPath) as! ImageCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.imageView.image = UIImage(named: "airplane")
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }

}
