//
//  MainTableViewControler.swift
//  myMapsPlaces
//
//  Created by Danya on 23.05.2021.
//

import UIKit

class MainTableViewControler: UITableViewController {
    
    
    
    let restaurantNames = ["Бар пробка", "СушиWay", "Карл Швабе", "Додо пицца", "Евразия",
                           "Beerloga", "TOKIO-SITI", "SPB", "KFC", "Макдональдс", "Васаби"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])


        return cell
    }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    

}
