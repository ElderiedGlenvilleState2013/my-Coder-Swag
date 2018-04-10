//
//  ProductVC.swift
//  SwagZ!
//
//  Created by McKinney family  on 4/9/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
    @IBOutlet weak var productsCollection: UICollectionView!

    private(set) public var product = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productsCollection.delegate = self
        productsCollection.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initProduct(category: Category) {
        product = DataService.instances.getProducts(forCategoryTitile: category.title)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let products = product[indexPath.row]
            cell.updateViews(product: products)
            return cell
        }
        
         return ProductCell()
        
        }
        
    }
    


