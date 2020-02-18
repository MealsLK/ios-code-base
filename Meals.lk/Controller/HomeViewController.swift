//
//  HomeViewController.swift
//  Meals.lk
//
//  Created by Bhanuka Gamage on 2/16/20.
//  Copyright © 2020 Mealslk. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController : UIViewController {
    
    let data = [
        CardData(title: "Woods", image: #imageLiteral(resourceName: "1"), url: "test.com"),
        CardData(title: "Bird's Eye", image: #imageLiteral(resourceName: "2"), url: "test.com"),
        CardData(title: "Winter", image: #imageLiteral(resourceName: "3"), url: "test.com"),
        CardData(title: "Ocean", image: #imageLiteral(resourceName: "4"), url: "test.com")
    ]
    
    let recommendedCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        cv.showsHorizontalScrollIndicator = false
        cv.translatesAutoresizingMaskIntoConstraints = false

        cv.register(CardCell.self, forCellWithReuseIdentifier: "cell")
        return cv

    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup(){
        
        view.addSubview(recommendedCollectionView)
        recommendedCollectionView.backgroundColor = .white
        
        recommendedCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        recommendedCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        recommendedCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        recommendedCollectionView.heightAnchor.constraint(equalTo: recommendedCollectionView.widthAnchor, multiplier: 0.75).isActive = true
        
        recommendedCollectionView.delegate = self
        recommendedCollectionView.dataSource = self
               
    }
}


extension HomeViewController : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 2.5, height: collectionView.frame.width * 0.75)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CardCell
        cell.backgroundColor = .red
        
        cell.data = self.data[indexPath.row]
        return cell
    }

    
}

