//
//  HeaderCollectionReusableView.swift
//  LastFm Search
//
//  Created by Akshay Jain on 09/09/20.
//  Copyright © 2020 akshay. All rights reserved.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    
    @IBOutlet private weak var titleLabel: UILabel!
    
    override func prepareForReuse() {
        self.titleLabel.text = nil
    }
    
    /// Set header title text
    func setTitle(title: String) {
        self.titleLabel.text = title
    }
    
}
