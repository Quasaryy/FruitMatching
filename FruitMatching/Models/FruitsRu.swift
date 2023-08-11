//
//  FruitsRu.swift
//  FruitMatching
//
//  Created by Yury on 11/08/2023.
//

import Foundation

struct FruitsRu {
    let nameRu: String
    let tag: Int
    
    static func getFruitsRu() -> [FruitsRu] {
        var fruitsArray = [FruitsRu]()
        
        fruitsArray.append(FruitsRu(nameRu: "Яблоко", tag: 1))
        fruitsArray.append(FruitsRu(nameRu: "Банан", tag: 2))
        fruitsArray.append(FruitsRu(nameRu: "Дыня", tag: 3))
        fruitsArray.append(FruitsRu(nameRu: "Груша", tag: 4))
        fruitsArray.append(FruitsRu(nameRu: "Ананас", tag: 5))
        
        fruitsArray.shuffle()
        return fruitsArray
    }
}
