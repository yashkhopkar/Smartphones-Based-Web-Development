//
//  Customer.swift
//  EmptyApp
//
//  Created by user150984 on 2/23/19.
//  Copyright © 2019 rab. All rights reserved.
//

import Foundation

public class Customer{
    private static var count : Int = 0
    private var id:Int
    private var name : String
    private var age : Int
    private var email : String
    private var address : String
    
    
    init() {
        Customer.count = Customer.count + 1
        self.id = Customer.count
        self.name = ""
        self.age = 0
        self.email = ""
        self.address = ""
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
    
    var Age: Int {
        get {
            return self.age
        }
        set {
            self.age = newValue
        }
    }
    
    var Email: String {
        get {
            return self.email
        }
        set {
            self.email = newValue
        }
    }
    
    var Address: String {
        get {
            return self.address
        }
        set {
            self.address = newValue
        }
    }
    
}

