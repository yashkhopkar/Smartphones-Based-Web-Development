//
//  BookingList.swift
//  EmptyApp
//
//  Created by user150984 on 2/23/19.
//  Copyright © 2019 rab. All rights reserved.
//

import Foundation
public class BookingsList{
    private var bookArray : Array<Bookings>
    
    init() {
        bookArray = [Bookings]()
    }
    
    var BookArray : Array<Bookings>{
        get{
            return self.bookArray
        }
        set{
            self.bookArray = newValue
        }
    }
    
    func createBooking(custName:Customer?, movName:Movies?, dateOfBooking:String, dateOfReturn:String, quantity: Int) {
        let booking = Bookings()
        booking.Customer = custName
        booking.Movies = movName
        booking.DateOfBooking = dateOfBooking
        booking.DateOfReturn = dateOfReturn
        booking.Quantity = quantity
        bookArray.append(booking)
    }
    
    func updateBooking(updateBooking:Bookings, newCust:Customer?, newMov:Movies?, newDateOfBook:String, newDateOfRet: String, newQuantity:Int) {
        updateBooking.Customer = newCust
        updateBooking.Movies = newMov
        updateBooking.DateOfBooking = newDateOfBook
        updateBooking.DateOfReturn = newDateOfRet
        updateBooking.Quantity = newQuantity
    }
    
    func deleteBooking(deleteBook: Bookings) {
        for (index,value) in BookArray.enumerated(){
            if value === deleteBook{
                BookArray.remove(at:index)
            }
        }
    }
}
