//
//  DetailViewController.swift
//  flix
//
//  Created by Sandesh Basnet on 9/6/18.
//  Copyright © 2018 Sandesh Basnet. All rights reserved.
//

import UIKit

import AlamofireImage

class DetailViewController: UIViewController {
    
    
    
    @IBOutlet weak var backGroundImage: UIImageView!
    
    
    @IBOutlet weak var posterImage: UIImageView!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    @IBOutlet weak var overViewLabel: UILabel!
    
    var movie: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let movie = self.movie {
            
            titleLabel.text = movie["title"] as? String
            releaseDateLabel.text = movie["release_date"] as? String
            overViewLabel.text = movie["overview"] as? String
            let backgroundImagePath = movie["backdrop_path"] as! String
            let posterImagePath = movie["poster_path"] as! String
            
            let baseURL = "https://image.tmdb.org/t/p/w500"
            
            
            let background_url = URL(string: baseURL +  backgroundImagePath)!
            let poster_url = URL (string: baseURL + posterImagePath)!
            print(posterImagePath)
            print(backgroundImagePath)
            self.backGroundImage.af_setImage(withURL: background_url)
            self.posterImage.af_setImage(withURL: poster_url)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
