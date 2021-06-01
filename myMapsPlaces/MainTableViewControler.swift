//
//  MainTableViewControler.swift
//  myMapsPlaces
//
//  Created by Danya on 23.05.2021.
//

import UIKit

class MainTableViewControler: UITableViewController {
    
    
//    var places = Place.getPlaces()

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    // MARK: - Table view data source


//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return places.count
//    }

    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
//
////        let place = places[indexPath.row]
//
//        cell.nameLabel.text = place.name
//        cell.locationLabel.text = place.location
//        cell.typeLabel.text = place.type
//
//        if place.image == nil {
//            cell.imegeOfPlace.image = UIImage(named: place.restrantImage!)
//        } else {
//            cell.imegeOfPlace.image = place.image
//        }
//
//
//        cell.imegeOfPlace.layer.cornerRadius = cell.imegeOfPlace.frame.size.height / 2
//        cell.imegeOfPlace.clipsToBounds = true
//
//
//
//        return cell
//    }
    
    // MARK: - Tabel View delegate
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        
        guard let newPlaceVC = segue.source as? NewPlaceViewController else { return }
        
        newPlaceVC.saveNewPlace()
//        places.append(newPlaceVC.newPlace!)
        tableView.reloadData()
        
    }
    

}
