//
//  DataService.swift
//  SwagZ!
//
//  Created by McKinney family  on 4/7/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import Foundation
class DataService {
    
    static let instances = DataService()
    
    
    private let categories = [ Category(title: "SHIRTS", imageName: "Shirts.png"), Category(title: "HOODIES", imageName: "hoodies.png"), Category(title: "HATS", imageName: "hats.png"), Category(title: "Digital", imageName: "digital.png")]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslops Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslops Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslops Logo Snapback", price: "$20", imageName: "hat04.png")
    
    ]
    
    private let hoodies = [
    Product(title: "DevSlops Logo Hoodie Gray", price: "$32", imageName: "hoodie01.png"),
    Product(title: "DevSlops Logo Hoodie Red", price: "$32", imageName: "hoodies02.png"),
    Product(title: "DevSlops Logo Hoodie Gray", price: "$32", imageName: "hoodies03.png"),
    Product(title: "DevSlops Logo Hoodie Black", price: "$32", imageName: "hoodies04.png")
    
    ]
    
    private let shirts = [

    Product(title: "DevSlops Logo Shirts Black", price: "$18", imageName: "shirt01.png"),
    Product(title: "DevSlops Logo Shirts Light Gray", price: "$19", imageName: "shirt02.png"),
    Product(title: "DevSlops Logo Shirts Red", price: "$22", imageName: "shirt03.png"),
    Product(title: "Hustle  Gray", price: "$12", imageName: "Shirt04.png"),
    Product(title: "KickFlip Studios Black", price: "$16", imageName: "shirt05.png")
    
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitile title:String) -> [Product] {
        switch title {
        case "SHIRTS":
           return getShirts()
        case "HATS":
           return getHats()
        case "HOODIES":
           return  getHoodies()
        case "DIGITAL":
           return getDigitalGoods()
        default:
            return getShirts()
            
        }
        
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
}

