//
//  MainTableViewControler.swift
//  myMapsPlaces
//
//  Created by Danya on 23.05.2021.
//

import UIKit

class MainTableViewControler: UITableViewController {
    
    
    let places = Place.getPlaces()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        
        
        cell.nameLabel.text = places[indexPath.row].name
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type
        
        cell.imegeOfPlace.image = UIImage(named: places[indexPath.row].imege)
        cell.imegeOfPlace.layer.cornerRadius = cell.imegeOfPlace.frame.size.height / 2
        cell.imegeOfPlace.clipsToBounds = true
        
        
        
        return cell
    }
    
    // MARK: - Tabel View delegate
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {
        
    }
    

}
