//
//  AdsViewController.swift
//  AigenTask
//
//  Created by Sanketh S D on 12/6/22.
//

import UIKit

class AdsViewController: UIViewController {
    
    let brand = ["Tesla", "BMW", "Ferrari", "Ford", "Porsche", "Honda", "Lamborghini", "Maserati"]
    let model = ["Model S", "X6", "F8", "Fiesta", "718 Coupe", "City", "Huracan", "MC20"]
    let year = ["2020", "2019", "2021", "2019", "2021", "2017", "2015", "2018"]
    let price = ["12,00,000", "24,00,000", "40,00,000", "4,00,000", "80,00,000", "10,00,000", "80,00,000", "50,00,000"]
    let fuelType = ["Electric", "Petrol", "Diesel", "Petrol", "Petrol", "Diesel", "Diesel", "Diesel"]
    let mileage = ["170", "10", "12", "8", "20", "10", "15", "8", "9"]
    let contact = ["9999888801", "9999888802", "9999888803", "9999888804", "9999888805", "9999888806", "9999888807", "9999888808"]
    let images = ["teslaLogo", "bmwLogo", "ferrariLogo", "fordLogo", "porscheLogo", "hondaLogo", "lamborghiniLogo", "maseratiLogo"]
    
    @IBOutlet weak var adsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        adsTableView.delegate = self
        adsTableView.dataSource = self
        
        adsTableView.reloadData()
    }
    
    
    
}

extension AdsViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return brand.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AdsTableViewCell") as! AdsTableViewCell
        cell.imgView.image = UIImage(named: images[indexPath.row])
        cell.name.text = "\(brand[indexPath.row]) \(model[indexPath.row])"
        cell.price.text = "Rs. \(price[indexPath.row])"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}

