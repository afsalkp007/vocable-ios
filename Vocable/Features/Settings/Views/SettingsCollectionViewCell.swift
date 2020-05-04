//
//  SettingsCollectionViewCell.swift
//  Vocable AAC
//
//  Created by Jesse Morgan on 2/26/20.
//  Copyright © 2020 WillowTree. All rights reserved.
//

import UIKit
import Combine

final class SettingsCollectionViewCell: VocableCollectionViewCell {

    @IBOutlet private weak var textLabel: UILabel!
    @IBOutlet private weak var imageView: UIImageView!

    override func updateContentViews() {
        super.updateContentViews()

        textLabel?.textColor = isEnabled ? .defaultTextColor : UIColor.defaultTextColor.withAlphaComponent(0.6)
    }

    func setup(title: String, image: UIImage?) {
        guard let image = image else { return }
        
        textLabel.text = title
        imageView.image = image
    }

}
