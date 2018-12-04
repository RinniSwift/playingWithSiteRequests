//
//  ViewController.swift
//  PlayingWithRequests
//
//  Created by Rinni Swift on 12/4/18.
//  Copyright © 2018 Rinni Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var image: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageURL = URL(string: "https://www.jpl.nasa.gov/spaceimages/images/largesize/PIA05982_hires.jpg")!
        let task = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
            if error == nil {
                let loadedImage = UIImage(data: data!)
                
                DispatchQueue.main.sync {
                    self.image.image = loadedImage
                }
            }
        }
        task.resume()
    }


}

