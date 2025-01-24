//
//  ImageData.swift
//  Shopping app
//
//  Created by Ingride Youadeu on 2024-10-03.
//

import Foundation


struct FruitModel {
    var id: Int
    var title: fruitTitle//enum .apple, .orange
    var image: String
    var price: String
    var color: String
}

enum fruitTitle: String {
    case apple, apricot, avocado, banana,blackberry, cherry, dragonfruit, fig, grapes, kiwi, lemon, mango, muskmelon, orange,papaya, pear, pineapple, plum,raspberry, strawbery, watermelon
}
