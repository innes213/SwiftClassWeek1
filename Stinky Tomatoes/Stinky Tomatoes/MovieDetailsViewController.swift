//
//  MovieDetailsViewController.swift
//  Stinky Tomatoes
//
//  Created by Rob Hislop on 4/19/15.
//  Copyright (c) 2015 Rob Hislop. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["synopsis"] as? String
        
        var urlString = movie.valueForKeyPath("posters.original") as! String
        println(urlString)
        urlString = urlString.stringByReplacingOccurrencesOfString(".*cloudfront.net/",withString: "https://content6.flixster.com/", options: .RegularExpressionSearch)
        println(urlString)
        let url = NSURL(string: urlString)!
        imageView.setImageWithURL(url)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
