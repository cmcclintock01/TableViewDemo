//
//  ViewController.swift
//  TableViewDemo
//
//  Created by McClintock,Corben L on 4/13/23.
//

import UIKit

class Product{
    var name : String?
    var category : String?
    
    init(name: String, category: String){
        self.name = name
        self.category = category
    }
    
    
}//end product class

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //expects to return the number of products
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        var myCell = tableViewOutlet.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //populate a cell
        
        //return that cell
    }
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var products = [Product]() // Creating an empty array of products
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let p1 = Product(name: "MacBook Air", category: "Laptop")
        products.append(p1)
        let p2 = Product(name: "Iphone X", category: "Phone")
        products.append(p2)
        let p3 = Product(name: "Airpod Pro's", category: "Accessories")
        products.append(p3)
        let p4 = Product(name: "Iphone 13 Pro", category:"Phone")
        products.append(p4)
        let p5 = Product(name: "Apple Pen", category: "Accessories")
        products.append(p5)
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
    }


}

