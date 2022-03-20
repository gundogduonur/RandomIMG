//
//  ViewController.swift
//  RandomImageApp
//
//  Created by Onur Gündoğdu on 20.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getImages()
    }

    @IBAction func randomClicked(_ sender: Any) {
       getImages()
    }
    func getImages()
    {
        let urlImage = "https://source.unsplash.com/600x600"
        let url=URL(string: urlImage)!
        guard let data = try? Data(contentsOf: url)
                else
        {
            return
        }
        imageView.image = UIImage(data: data)
    }
}

