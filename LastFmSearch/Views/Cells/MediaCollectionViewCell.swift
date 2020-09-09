//
//  MediaCollectionViewCell.swift
//  LastFm Search
//
//  Created by Akshay Jain on 09/09/20.
//  Copyright © 2020 akshay. All rights reserved.
//

import AlamofireImage

class MediaCollectionViewCell: UICollectionViewCell {
    
    
    
    
    // MARK: - Outlets
    @IBOutlet private weak var mainContentView: UIView!
    @IBOutlet private weak var artworkImageView: UIImageView!
    @IBOutlet private weak var titelLabel: UILabel!
    @IBOutlet private weak var subtitleLabel: UILabel!
    
    // MARK: - Lifecycle methods
    override func awakeFromNib() {
        self.mainContentView.layer.cornerRadius = 10.0
    }
    
    override func prepareForReuse() {
        self.artworkImageView.af.cancelImageRequest()
        self.artworkImageView.image = nil
        self.artworkImageView.backgroundColor = UIColor.white
        self.titelLabel.text = nil
        self.subtitleLabel.text = nil
    }
    
    
    
    // MARK: - Public methods
    
    /// setup cell details and load image from url
    func setupMediaDetails(with title: String, subtitle: String, imageURL: URL) {
        self.titelLabel.text = title
        self.subtitleLabel.text = subtitle
        
        self.artworkImageView.af.setImage(withURL: imageURL,
                                          imageTransition: .flipFromLeft(0.4))
    }
}
