import UIKit

var str = "Hello, playground"

str+=" Brian is here, testicles"

var string2 = "John"

string2 = "Mike"

class Movie {
    var title: String="some title"
    
    func getMovieTitle() -> String {
        return title
    }
}

var movie = Movie()
print ("This is the movie title: \(movie.getMovieTitle())")

