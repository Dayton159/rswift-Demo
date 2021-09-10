//
//  AnimalsVC.swift
//  rswift-Demo
//
//  Created by Dayton on 06/09/21.
//

import UIKit

class AnimalsVC: UIViewController {
  @IBOutlet weak var tableView: UITableView!
  private var animals = [Animal]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationItem.title = R.string.localizable.animalNavTitle(preferredLanguages: [AppLanguage.shared.language])
    self.setupTableView()
    self.loadData()
  }
  
  private func loadData() {
    DummyAnimals.load { animal in
      DispatchQueue.main.async {
        self.animals = animal
        self.tableView.reloadData()
      }
    }
  }
  
  private func setupTableView() {
    self.tableView.register(R.nib.animalsTableCell)
    self.tableView.tableFooterView = UIView()
    self.tableView.delegate = self
    self.tableView.dataSource = self
  }
}

extension AnimalsVC: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return animals.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.animalCell, for: indexPath)!
    cell.configureCell(data: animals[indexPath.row])
    return cell
  }
}
