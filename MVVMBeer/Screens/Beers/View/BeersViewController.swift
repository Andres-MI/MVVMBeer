//
//  ViewController.swift
//  MVVMBeer
//
//  Created by Andrés Melenchón on 23/2/22.
//

import UIKit

class BeersViewController: UIViewController {
    @IBOutlet var tableView: UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        initViewModel()
    }
    
    func initView(){
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView
        
    }
    
    func initViewModel(){
        
    }

}

// MARK: - UITableViewDelegate

extension BeersViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
    
// MARK: - UITableViewDataSource
extension BeersViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BeerTableViewCell.identifier, for: indexPath) as? BeerTableViewCell else { fatalError("xib does not exists")}
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}



