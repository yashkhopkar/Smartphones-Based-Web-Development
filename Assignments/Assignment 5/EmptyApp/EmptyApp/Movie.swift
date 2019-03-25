//
//  Movie.swift
//  EmptyApp
//
//  Created by user150984 on 2/23/19.
//  Copyright © 2019 rab. All rights reserved.
//

import Foundation

public class Movies{
    private static var count : Int = 0
    private var id:Int
    private var name : String
    private var releaseDate : String
    private var type : String
    private var quantity : Int
    
    init() {
        Movies.count = Movies.count + 1
        self.id = Movies.count
        self.name = ""
        self.releaseDate = ""
        self.type = ""
        self.quantity = 0
    }
    
    var Id: Int {
        get {
            return self.id
        }
    }
    
    var Name: String {
        get {
            return self.name
        }
        set {
            self.name = newValue
        }
    }
    
    var ReleaseDate: String {
        get {
            return self.releaseDate
        }
        set {
            self.releaseDate = newValue
        }
    }
    
    var TypeG: String {
        get {
            return self.type
        }
        set {
            self.type = newValue
        }
    }
    
    var Quantity: Int {
        get {
            return self.quantity
        }
        set {
            self.quantity = newValue
        }
    }
}
