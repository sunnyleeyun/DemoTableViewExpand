//
//  ExpandTableViewCell.swift
//  DemoTableviewExpand
//
//  Created by 李昀 on 2019/3/21.
//  Copyright © 2019 李昀. All rights reserved.
//

import UIKit

class ExpandTableViewCell: UITableViewCell {
  
  @IBOutlet weak var testLabel: UILabel!
  @IBOutlet weak var expandButton: UIButton!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
  
}
