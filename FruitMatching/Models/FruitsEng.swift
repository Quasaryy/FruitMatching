//
//  Fruits.swift
//  FruitMatching
//
//  Created by Yury on 11/08/2023.
//

import Foundation

struct FruitsEng {
    let nameEng: String
    let image: String
    let tag: Int
    
    static func getFruitsEng() -> [FruitsEng] {
        var fruitsArray = [FruitsEng]()
        
        fruitsArray.append(FruitsEng(nameEng: "Apple", image: "apple", tag: 1))
        fruitsArray.append(FruitsEng(nameEng: "Banana", image: "bananas", tag: 2))
        fruitsArray.append(FruitsEng(nameEng: "Melon", image: "melon", tag: 3))
        fruitsArray.append(FruitsEng(nameEng: "Pear", image: "pear.webp", tag: 4))
        fruitsArray.append(FruitsEng(nameEng: "Pineapple", image: "pineapple", tag: 5))
        
        fruitsArray.shuffle()
        return fruitsArray
    }
}
