//
//  SearchViewController.swift
//  favorites-movie-app
//
//  Created by thomas moran on 10/31/18.
//  Copyright © 2018 thomas moran. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var searchText: UITextField!
    @IBOutlet var tableView: UITableView!
    
    var searchResults: [Movie] = []
    
    @IBAction func search (sender: UIButton) {
        print("Searching...")
        var searchTerm = searchText.text!
        if searchTerm.characters.count > 2 {
            
        }
    }
    
    func retrieveMoviesByTerm(searchTerm: String){
        let url = "https://omdbapi.com/?s\(searchTerm)&type=movie&r=json"
        HTTPHandler.getJson(urlString: url, completionHandler: parseDataIntoMovies)
    }
    
    func parseDataIntoMovies(data: Data?) -> Void {
        if let data = data{
            let object = 
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return searchResults.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Search Results"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        //grouped vertical sections of the tableview
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //at init.appear ... this runs for each visible cell that needs to render
        let moviecell = tableView.dequeueReusableCell(withIdentifier: "customcell", for: indexPath) as! CustomTableViewCell
    
        let idx: Int = indexPath.row
        moviecell.favButton.tag = idx
        
        //title
        moviecell.movieTitle?.text = searchResults[idx].title
        //year
        moviecell.movieYear?.text = searchResults[idx].year
        //image
        displayMovieImage(idx, moviecell: moviecell)
        
        return moviecell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of ny resources that can be recreated.
        //part of pluralsight code, was not auto generated by XCode 10 (fuck)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
