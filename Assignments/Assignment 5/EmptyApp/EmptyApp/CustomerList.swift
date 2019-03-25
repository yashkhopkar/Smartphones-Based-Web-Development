//
//  CustomerList.swift
//  EmptyApp
//
//  Created by user150984 on 2/23/19.
//  Copyright © 2019 rab. All rights reserved.
//

import Foundation
public class CustomerList{
    
    private var custArray : Array<Customer>
    
    init() {
        custArray = [Customer]()
    }
    
    var CustArray : Array<Customer>{
        get{
            return self.custArray
        }
        set{
            self.custArray = newValue
        }
    }
    
    func createCustomer(name:String, age:Int, email:String, address:String) {
        let cust = Customer()
        cust.Name = name
        cust.Age = age
        cust.Email = email
        cust.Address = address
        custArray.append(cust)
    }
    
    func updateCustomer(updateCust:Customer, name:String, age:Int, email:String, address:String) {
        updateCust.Name = name
        updateCust.Age = age
        updateCust.Email = email
        updateCust.Address = address
    }
    
    func deleteCustomer(deleteCust: Customer) {
        for (index,value) in CustArray.enumerated(){
            if value === deleteCust{
                custArray.remove(at:index)
            }
        }
    }
}
