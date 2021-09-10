//
//  TestTableViewCell.swift
//  rswift-Demo
//
//  Created by Dayton on 06/09/21.
//

import UIKit

class AnimalsTableCell: UITableViewCell {
  @IBOutlet weak var animalImageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
  
  func configureCell(data: Animal) {
    self.animalImageView.image = data.photo
    self.nameLabel.text = data.name
    
    // Font
    self.configureFont()
    
  }
  
  private func configureFont() {
    self.nameLabel.font = R.font.latoBold(size: 14)
  }
}
