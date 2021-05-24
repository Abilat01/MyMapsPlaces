//
//  MainTableViewControler.swift
//  myMapsPlaces
//
//  Created by Danya on 23.05.2021.
//

import UIKit

class MainTableViewControler: UITableViewController {
    
    
    
    let restaurantNames = ["Бар пробка", "СушиWay", "Карл Швабе", "Додо пицца", "Евразия",
                           "Beerloga", "TOKIO-SITI", "Много мяса", "Жемчужина", "Теремок", "Васаби", "Камелот", "Пивная кружка", "SPB"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        
        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.imegeOfPlace.image = UIImage(named: restaurantNames[indexPath.row])
        cell.imegeOfPlace.layer.cornerRadius = cell.imegeOfPlace.frame.size.height / 2
        cell.imegeOfPlace.clipsToBounds = true
        
        
        
        return cell
    }
    
    // MARK: - Tabel View delegate

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    

}
