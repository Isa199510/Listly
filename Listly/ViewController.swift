//
//  ViewController.swift
//  Listly
//
//  Created by Иса on 20.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func fetchPressed() {
        guard let url = URL(string: Link.url.rawValue) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let error = error else { return }
            guard let data = data else { return }
            
            guard let jsonString = String(data: data, encoding: .utf8) else { return }
            do {
                let json = try JSONDecoder().decode(Listly.self, from: data)
                print(json.url)
                print(json.metadata.name)
                print(json.metadata.description)
            } catch let error {
                print(error)
            }

        }.resume()
    }
    

}

