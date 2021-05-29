//
//  PlaceModel.swift
//  myMapsPlaces
//
//  Created by Danya on 25.05.2021.
//

import UIKit

struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restrantImage: String?
    
    
    static let restaurantNames = ["Бар пробка", "СушиWay", "Карл Швабе", "Додо пицца", "Евразия",
                               "Beerloga", "TOKIO-SITI", "Много мяса", "Жемчужина", "Теремок", "Васаби", "Камелот", "Пивная кружка", "SPB"]
    
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Колпино", type: "Ресторан", image: nil, restrantImage: place))
        }
        
    return places
        
  }
    
    
}
