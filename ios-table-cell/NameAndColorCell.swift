//
//  NameAndColorCell.swift
//  ios-table-cell
//
//  Created by Xiao Lu on 10/10/15.
//  Copyright © 2015 Xiao Lu. All rights reserved.
//

import UIKit

class NameAndColorCell: UITableViewCell {
    
    var name: String = "" { // Property observer
        didSet {
            if name != oldValue {
                nameLabel.text = name
            }
        }
    }
    
    var color: String = "" {
        didSet {
            if color != oldValue {
                colorLabel.text = color
            }
        }
    }
    
    var nameLabel: UILabel!
    var colorLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let nameLabelRect = CGRectMake(0, 5, 70, 15)
        let nameMarker = UILabel(frame: nameLabelRect)
        nameMarker.textAlignment = NSTextAlignment.Right
        nameMarker.text = "Name:"
        nameMarker.font = UIFont.boldSystemFontOfSize(12)
        contentView.addSubview(nameMarker)
        
        let colorLabelRect = CGRectMake(0, 26, 70, 15)
        let colorMarker = UILabel(frame: colorLabelRect)
        colorMarker.textAlignment = NSTextAlignment.Right
        colorMarker.text = "Color:"
        colorMarker.font = UIFont.boldSystemFontOfSize(12)
        contentView.addSubview(colorMarker)
        
        let nameValueRect = CGRectMake(80, 5, 200, 15)
        nameLabel = UILabel(frame: nameValueRect)
        contentView.addSubview(nameLabel)
        
        let colorValueRect = CGRectMake(80, 25, 200, 15)
        colorLabel = UILabel(frame: colorValueRect)
        contentView.addSubview(colorLabel)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
