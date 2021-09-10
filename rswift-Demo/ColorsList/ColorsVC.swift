//
//  ColorsVC.swift
//  rswift-Demo
//
//  Created by Dayton on 09/09/21.
//

import UIKit

class ColorsVC: UIViewController {
  @IBOutlet weak var collectionView: UICollectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.setupCollectionView()
    self.navigationItem.title = R.string.localizable.color(preferredLanguages: [AppLanguage.shared.language])
  }
  
  private func setupCollectionView() {
    collectionView.delegate = self
    collectionView.dataSource = self
    collectionView.register(R.nib.colorCollectionViewCell)
  }
}

extension ColorsVC:  UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.width / 2.07, height: collectionView.frame.height / 3)
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return colorsData.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.colorCell, for: indexPath)!
    cell.backgroundColor = colorsData[indexPath.row].color
    return cell
  }
}
