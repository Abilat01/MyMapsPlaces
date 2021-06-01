//
//  PlaceModel.swift
//  myMapsPlaces
//
//  Created by Danya on 25.05.2021.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    
     let restaurantNames = ["Бар пробка", "СушиWay", "Карл Швабе", "Додо пицца", "Евразия",
                               "Beerloga", "TOKIO-SITI", "Много мяса", "Жемчужина", "Теремок", "Васаби", "Камелот", "Пивная кружка", "SPB"]
    
    
     func savePlaces() {
        
        for place in restaurantNames {
            
            let image = UIImage(named: place)
            
            guard let imageData = image?.pngData() else { return }
            
            let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Колпино"
            newPlace.type = "Ресторан"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace)
            
        }
        

        
  }
    
    
}
