//
//  ContactListViewController.swift
//  likeVkApp
//
//  Created by Artur Felipe Moran on 21.04.2022.
//

import UIKit

class ContactListViewController: UIViewController {
    
    
    @IBOutlet weak var contactTableView: UITableView!
    @IBOutlet weak var contactSearchBar: UISearchBar!
    
    let contactTableViewCellIdentifier = "ContactTableViewCellIdentifier"
    let contactTableViewCellName = "ContactTableViewCell"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        contactTableView.delegate = self
        contactTableView.dataSource = self
        contactTableView.register(UINib(nibName: contactTableViewCellName, bundle: nil), forCellReuseIdentifier: contactTableViewCellIdentifier)

    }

}

extension ContactListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: contactTableViewCellIdentifier, for: indexPath) as? ContactTableViewCell else {return UITableViewCell()}
        
        if indexPath.row % 2 == 0{
            cell.contactImageView.image = UIImage(named: "logo")
        }else{
            cell.contactImageView.image = UIImage(named: "screen")
        }
        cell.configure()
        
        return cell
        
    }
    
    
}
