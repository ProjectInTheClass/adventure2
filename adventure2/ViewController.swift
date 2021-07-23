//
//  ViewController.swift
//  adventure2
//
//  Created by Dongho kim on 2021/07/23.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let category = ["Hello", "Hi","ok"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return category.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as?
                UICollectionViewCell else {
            return UICollectionViewCell()
        }
        let img = UIImage(named: "\(category[indexPath.row]).png")
        cell.imgView?.image = img
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

class cellClass: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
}


