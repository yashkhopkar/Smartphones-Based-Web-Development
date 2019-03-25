//
//  MovieList.swift
//  EmptyApp
//
//  Created by user150984 on 2/23/19.
//  Copyright © 2019 rab. All rights reserved.
//

import Foundation
public class MoviesList{
    
    private var movArray : Array<Movies>
    
    init() {
        movArray = [Movies]()
    }
    
    var MovArray : Array<Movies>{
        get{
            return self.movArray
        }
        set{
            self.movArray = newValue
        }
    }
    
    func createMovie(name:String, typeg:String, releaseDate:String, quantity: Int) {
        let movie = Movies()
        movie.Name = name
        movie.TypeG = typeg
        movie.ReleaseDate = releaseDate
        movie.Quantity = quantity
        movArray.append(movie)
    }
    func updateMovie(updateMovie:Movies, name:String, typeg:String, releaseDate:String, quantity: Int) {
        updateMovie.Name = name
        updateMovie.TypeG = typeg
        updateMovie.ReleaseDate = releaseDate
        updateMovie.Quantity = quantity
    }
    
    func deleteMovie(deleteMov: Movies) {
        for (index,value) in MovArray.enumerated(){
            if value === deleteMov{
                MovArray.remove(at:index)
            }
        }
    }
}
