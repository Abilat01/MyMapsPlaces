//
//  PlaceModel.swift
//  myMapsPlaces
//
//  Created by Danya on 25.05.2021.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var imege: String
    
    
    static let restaurantNames = ["Бар пробка", "СушиWay", "Карл Швабе", "Додо пицца", "Евразия",
                               "Beerloga", "TOKIO-SITI", "Много мяса", "Жемчужина", "Теремок", "Васаби", "Камелот", "Пивная кружка", "SPB"]
    
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Колпино", type: "Ресторан", imege: place))
        }
        
    return places
        
  }
    
    
}
