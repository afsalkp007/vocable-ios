//
//  UIColor+AppExtensions.swift
//  Vocable AAC
//
//  Created by Kyle Ohanian on 4/16/19.
//  Copyright © 2019 WillowTree. All rights reserved.
//

import UIKit

extension UIColor {
    
    // MARK: New Branded Colors

    private convenience init?(safelyNamed name: String) {
        self.init(named: name,
                  in: Bundle(for: AppDelegate.self),
                  compatibleWith: nil)
    }

    static let primaryColor = UIColor(safelyNamed: "Primary")!

    static let defaultTextColor = UIColor(safelyNamed: "DefaultFontColor")!
    static var selectedTextColor: UIColor {
        return collectionViewBackgroundColor
    }
    static let highlightedTextColor = UIColor(safelyNamed: "TextHighlight")

    static let collectionViewBackgroundColor = UIColor(safelyNamed: "Background")!
    static let defaultCellBackgroundColor = UIColor(safelyNamed: "DefaultCellBackground")!
    static let categoryBackgroundColor = UIColor(safelyNamed: "CategoryBackground")!

    static let cellSelectionColor = UIColor(safelyNamed: "Selection")!
    static let cellBorderHighlightColor = UIColor(safelyNamed: "BorderHighlight")!
    static let alertBackgroundColor = UIColor(safelyNamed: "AlertBackground")!

    static let grayDivider = UIColor(safelyNamed: "GrayDivider")!
}
