//
//  Booking.swift
//  EmptyApp
//
//  Created by user150984 on 2/23/19.
//  Copyright © 2019 rab. All rights reserved.
//

import Foundation
public class Bookings{
    
    private static var count : Int = 0
    private var id:Int
    private var customer : Customer?
    private var movies : Movies?
    private var quantity : Int
    private var dateOfBooking : String
    private var dateOfReturn : String
    
    init() {
        Bookings.count = Bookings.count + 1
        self.id = Bookings.count
        self.customer = nil
        self.movies = nil
        self.quantity = 0
        self.dateOfBooking = ""
        self.dateOfReturn = ""
    }
    
    var Id: Int {
        get {
            return self.id
        }
    }
    
    var Customer: Customer! {
        get {
            return self.customer
        }
        set {
            self.customer = newValue
        }
    }
    
    var Movies: Movies! {
        get {
            return self.movies
        }
        set {
            self.movies = newValue
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
    
    var DateOfBooking: String {
        get {
            return self.dateOfBooking
        }
        set {
            self.dateOfBooking = newValue
        }
    }
    var DateOfReturn: String {
        get {
            return self.dateOfReturn
        }
        set {
            self.dateOfReturn = newValue
        }
    }
    
    
}

