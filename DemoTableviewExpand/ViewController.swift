//
//  ViewController.swift
//  DemoTableviewExpand
//
//  Created by 李昀 on 2019/3/21.
//  Copyright © 2019 李昀. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    tableView.delegate = self
    tableView.tableFooterView = UIView()
  }
  var isExpand = false
  @objc func expand(_ sender: UIButton) {
    isExpand = !isExpand
    tableView.reloadData()
  }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? ExpandTableViewCell else { fatalError() }
    let testString = "1. 條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容 \n2. 條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容條款內容"
    if isExpand {
      cell.testLabel.numberOfLines = 0
      cell.expandButton.setTitle("收回", for: .normal)
    } else {
      cell.testLabel.numberOfLines = 3
      cell.expandButton.setTitle("展開閱讀更多", for: .normal)
    }
    cell.testLabel.text = testString
    cell.expandButton.addTarget(self, action: #selector(expand(_:)), for: .touchUpInside)
    
    return cell
  }
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
  }
}
