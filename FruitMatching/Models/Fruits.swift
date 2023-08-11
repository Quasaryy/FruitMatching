//
//  Fruits.swift
//  FruitMatching
//
//  Created by Yury on 11/08/2023.
//

import Foundation

struct Fruits {
    let nameEng: String
    let nameRu: String
    let image: String
}

extension Fruits {
    static func getFruits() -> [Fruits] {
        [
            Fruits(nameEng: "Apple", nameRu: "Яблоко", image: "apple"),
            Fruits(nameEng: "Banana", nameRu: "Банан", image: "bananas"),
            Fruits(nameEng: "Melon", nameRu: "Дыня", image: "melon"),
            Fruits(nameEng: "Pear", nameRu: "Груша", image: "pear.webp"),
            Fruits(nameEng: "Pineapple", nameRu: "Ананас", image: "pineapple"),
            
        ]
    }
}
