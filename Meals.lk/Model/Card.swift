//
//  Card.swift
//  Meals.lk
//
//  Created by Bhanuka Gamage on 2/18/20.
//  Copyright © 2020 Mealslk. All rights reserved.
//

import Foundation
import UIKit

struct CardData {
    var title : String
    var image : UIImage
    var url : String
}


class CardCell : UICollectionViewCell {
    
    var data : CardData? {
        didSet {
            guard let data = data else {return}
            bg.image = data.image
            title.text = data.title
        }
        
        
    }
    
    fileprivate let bg : UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "2")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    fileprivate let title : UILabel = {
       let l = UILabel()
        l.textColor = .white
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(bg)
        bg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        bg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        bg.addSubview(title)
        
        title.leadingAnchor.constraint(equalTo: bg.leadingAnchor, constant: 5).isActive = true
        title.bottomAnchor.constraint(equalTo: bg.bottomAnchor, constant: -10).isActive = true
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
