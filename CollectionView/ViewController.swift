//
//  ViewController.swift
//  CollectionView
//
//  Created by Dean Chen on 7/2/14.
//  Copyright (c) 2014 Corklabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var imagesArray:String[] = []
    let cellIdentifier = "CollectionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for i in 1..100 {
         imagesArray += "Test \(i)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView!) -> Int {
        return 1
    }

    func collectionView(collectionView: UICollectionView!, numberOfItemsInSection section: Int) -> Int {
        return imagesArray.count
    }
    
    func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell! {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellIdentifier, forIndexPath: indexPath) as UICollectionViewCell
        var label = cell.viewWithTag(100) as UILabel
        label.text = imagesArray[indexPath.row]
        cell.layer.borderWidth = 2.0
        cell.layer.borderColor = UIColor.whiteColor().CGColor
        cell.layer.cornerRadius = 10.0
        
        return cell
    }
    
}

