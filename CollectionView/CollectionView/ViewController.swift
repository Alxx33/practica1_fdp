//
//  ViewController.swift
//  CollectionView
//
//  Created by Germán Santos Jaimes on 9/19/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
   
    
    
    
    
    @IBOutlet weak var mes: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
   //     var fecha: String = print(dateFormatter.string(from: date))
        
        
        let date = Date()
        print(date)
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        print(dateFormatter.string(from: date))
        
        mes.text = dateFormatter.string(from: date)
        
        
     
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 31
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "item", for: indexPath) as! ItemCollectionViewCell
        
        cell.numero.text = "\(indexPath.item + 1)"
        cell.backgroundColor = UIColor.blue
        
        return cell
        
    }
    


}

