//
//  AppDelegate.swift
//  EmptyApp
//
//  Created by rab on 10/15/17.
//  Copyright © 2017 rab. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    //INITIALIZING OBJECTS
    var cust = CustomerList()
    var movie = MoviesList()
    var booking = BookingsList()
    
    //CREATING VIEWS
    var window: UIWindow?
    
    var custView: UIView?
    var custViewView: UIView?
    var custAddView : UIView?
    var custDelView : UIView?
    
    var movView: UIView?
    var movViewView : UIView?
    var movAddView : UIView?
    var movDelView : UIView?
    
    var bookView : UIView?
    var bookViewView : UIView?
    var bookAddView : UIView?
    var bookDelView : UIView?
    
    var mainView: UIView?
    
    //CREATING TEXTBOXES
    
    var txtDispCustomers : UITextView?
    var txtCustName: UITextField?
    var txtCustAge: UITextField?
    var txtCustEmail: UITextField?
    var txtCustAddress: UITextField?
    
    var txtDelCustName : UITextField?

    var txtMovName: UITextField?
    var txtDispMovies : UITextView?
    var txtMovReleaseDate: UITextField?
    var txtMovType: UITextField?
    var txtMovQuantity: UITextField?
    
    
    var txtDelMovtName : UITextField?
    
    var txtDispBookings : UITextView?
    var txtBookCust : UITextField?
    var txtBookMov : UITextField?
    var txtBookQuantity : UITextField?
    var txtDateOfBook : UITextField?
    var txtDateOfReturn : UITextField?
    
    var txtDelBookId : UITextField?
    
    var txtSreachSpecBook : UITextField?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
            window.backgroundColor = UIColor.lightGray
            window.rootViewController = UIViewController()
            window.makeKeyAndVisible()
        }
        
        //CREATING THE MAIN SCREEN
        
        let mainViewRect: CGRect = CGRect(x:0,y:0,width:500, height:900);
        mainView = UIView(frame:mainViewRect)
        mainView?.backgroundColor = UIColor.white
        window?.addSubview(mainView!); // window is coming soon
        
        let btnCustomer:UIButton = UIButton(frame: CGRect(x: 100, y: 400, width: 200, height: 40))
        btnCustomer.setTitle("Customers", for: UIControlState.normal)
        btnCustomer.backgroundColor = UIColor.orange
        btnCustomer.addTarget(self, action:#selector(showCustomerView), for: .touchUpInside)
        mainView?.addSubview(btnCustomer)
        
        let btnMovie:UIButton = UIButton(frame: CGRect(x: 100, y: 450, width: 200, height: 40))
        btnMovie.setTitle("Movies", for: UIControlState.normal)
        btnMovie.backgroundColor = UIColor.orange
        btnMovie.addTarget(self, action:#selector(showMovieView), for: .touchUpInside)
        mainView?.addSubview(btnMovie)
        
        let btnBookings:UIButton = UIButton(frame: CGRect(x: 100, y: 500, width: 200, height: 40))
        btnBookings.setTitle("Bookings", for: UIControlState.normal)
        btnBookings.backgroundColor = UIColor.orange
        btnBookings.addTarget(self, action:#selector(showBookingView), for: .touchUpInside)
        mainView?.addSubview(btnBookings)
        
        //CREATING THE CUSTOMER SECTION
        
        let custSection: CGRect = CGRect(x:0, y:0, width:500, height: 900);
        custView = UIView(frame: custSection)
        custView?.backgroundColor = UIColor.white
        custView?.isHidden = true
        window?.addSubview(custView!)
        
        
        
        let btnViewCust : UIButton = UIButton(frame: CGRect(x:100, y:150, width:200, height:40))
        btnViewCust.setTitle("View Customers", for: UIControlState.normal)
        btnViewCust.backgroundColor = UIColor.orange
        btnViewCust.addTarget(self, action:#selector(showCustomerViewView), for: .touchUpInside)
        
        let btnAddCust : UIButton = UIButton(frame: CGRect(x:100, y:200, width:200, height:40))
        btnAddCust.setTitle("Add Customers", for: UIControlState.normal)
        btnAddCust.backgroundColor = UIColor.orange
        btnAddCust.addTarget(self, action:#selector(showAddCustomerView), for: .touchUpInside)
        
        let btnDeleteCust : UIButton = UIButton(frame: CGRect(x:100, y:250, width:200, height:40))
        btnDeleteCust.setTitle("Delete Customers", for: UIControlState.normal)
        btnDeleteCust.backgroundColor = UIColor.orange
        btnDeleteCust.addTarget(self, action:#selector(showDeleteCustomerView), for: .touchUpInside)
        
        let btnBackToMain : UIButton = UIButton(frame: CGRect(x:100, y:350, width:200, height:40))
        btnBackToMain.setTitle("Back", for: UIControlState.normal)
        btnBackToMain.backgroundColor = UIColor.orange
        btnBackToMain.addTarget(self, action:#selector(hideCustomerView), for: .touchUpInside)
        
        
        custView?.addSubview(btnAddCust)
        custView?.addSubview(btnViewCust)
        custView?.addSubview(btnDeleteCust)
        custView?.addSubview(btnBackToMain)
        
        //CREATING THE VIEW CUSTOMER SECTION
        let custViewSection : CGRect = CGRect(x:0, y:0, width:500, height: 900)
        custViewView = UIView(frame: custViewSection)
        custViewView?.backgroundColor = UIColor.white
        custViewView?.isHidden = true
        window?.addSubview(custViewView!)
        
        txtDispCustomers = UITextView(frame: CGRect(x:100.0, y:200.0, width:500, height:700))
        let btnViewBackToMain : UIButton = UIButton(frame: CGRect(x:100.0, y:100.0, width:200, height:40))
        btnViewBackToMain.setTitle("Back", for: UIControlState.normal)
        btnViewBackToMain.backgroundColor = UIColor.orange
        btnViewBackToMain.addTarget(self, action:#selector(hideCustomerViewView), for: .touchUpInside)
        custViewView?.addSubview(txtDispCustomers!)
        custViewView?.addSubview(btnViewBackToMain)
        
        
        //CREATING THE ADD CUSTOMER SECTION
        
        let custAddSection: CGRect = CGRect(x:0, y:0, width:500, height: 900)
        custAddView = UIView(frame: custAddSection)
        custAddView?.backgroundColor = UIColor.white
        custAddView?.isHidden = true
        window?.addSubview(custAddView!)
        
        txtCustName = UITextField(frame: CGRect(x:125.0, y:200.0, width:200.0, height:30.0))
        txtCustName?.textAlignment = NSTextAlignment.center
        txtCustName?.textColor = UIColor.blue
        txtCustName?.backgroundColor = UIColor.white
        txtCustName?.borderStyle = UITextBorderStyle.line
        txtCustName?.autocapitalizationType = UITextAutocapitalizationType.words
        txtCustName?.clearButtonMode = .whileEditing
        txtCustName?.placeholder = "Enter Name"
        txtCustName?.keyboardType = .default
        txtCustName?.returnKeyType = .done
        custAddView?.addSubview(txtCustName!)

        let rectNameLbl:CGRect = CGRect(x:25,y:200,width:100,height:50)
        let lblCustName:UILabel = UILabel(frame: rectNameLbl)
        lblCustName.text="Name"
        custAddView?.addSubview(lblCustName)

        txtCustAge = UITextField(frame: CGRect(x:125.0, y:250.0, width:200.0, height:30.0))
        txtCustAge?.textAlignment = NSTextAlignment.center
        txtCustAge?.textColor = UIColor.blue
        txtCustAge?.backgroundColor = UIColor.white
        txtCustAge?.borderStyle = UITextBorderStyle.line
        txtCustAge?.autocapitalizationType = UITextAutocapitalizationType.words
        txtCustAge?.clearButtonMode = .whileEditing
        txtCustAge?.placeholder = "Enter Age"
        txtCustAge?.keyboardType = .default
        txtCustAge?.returnKeyType = .done
        custAddView?.addSubview(txtCustAge!)

        let rectAgeLbl:CGRect = CGRect(x:25,y:250,width:100,height:50)
        let lblCustAge:UILabel = UILabel(frame: rectAgeLbl)
        lblCustAge.text="Age"
        custAddView?.addSubview(lblCustAge)



        txtCustEmail = UITextField(frame: CGRect(x:125.0, y:300.0, width:200.0, height:30.0))
        txtCustEmail?.textAlignment = NSTextAlignment.center
        txtCustEmail?.textColor = UIColor.blue
        txtCustEmail?.backgroundColor = UIColor.white
        txtCustEmail?.borderStyle = UITextBorderStyle.line
        txtCustEmail?.autocapitalizationType = UITextAutocapitalizationType.words
        txtCustEmail?.clearButtonMode = .whileEditing
        txtCustEmail?.placeholder = "Enter Email"
        txtCustEmail?.keyboardType = .default
        txtCustEmail?.returnKeyType = .done
        custAddView?.addSubview(txtCustEmail!)

        let rectEmailLbl:CGRect = CGRect(x:25,y:300,width:100,height:50)
        let lblCustEmail:UILabel = UILabel(frame: rectEmailLbl)
        lblCustEmail.text="Email"
        custAddView?.addSubview(lblCustEmail)


        txtCustAddress = UITextField(frame: CGRect(x:125.0, y:350.0, width:200.0, height:30.0))
        txtCustAddress?.textAlignment = NSTextAlignment.center
        txtCustAddress?.textColor = UIColor.blue
        txtCustAddress?.backgroundColor = UIColor.white
        txtCustAddress?.borderStyle = UITextBorderStyle.line
        txtCustAddress?.autocapitalizationType = UITextAutocapitalizationType.words
        txtCustAddress?.clearButtonMode = .whileEditing
        txtCustAddress?.placeholder = "Enter Address"
        txtCustAddress?.keyboardType = .default
        txtCustAddress?.returnKeyType = .done
        custAddView?.addSubview(txtCustAddress!)

        let rectLblAddress:CGRect = CGRect(x:25,y:350,width:100,height:50)
        let lblCustAddress:UILabel = UILabel(frame: rectLblAddress)
        lblCustAddress.text="Address"
        custAddView?.addSubview(lblCustAddress)

        let btnCreateCust: UIButton = UIButton(frame: CGRect(x: 50, y: 450, width: 150, height: 40))
        btnCreateCust.setTitle("Add", for: UIControlState.normal)
        btnCreateCust.backgroundColor = UIColor.orange
        btnCreateCust.addTarget(self, action:#selector(addCustomer), for: .touchUpInside)
        custAddView?.addSubview(btnCreateCust)

        let btnBackToCust: UIButton = UIButton(frame: CGRect(x: 250, y: 450, width: 150, height: 40))
        btnBackToCust.setTitle("Back", for: UIControlState.normal)
        btnBackToCust.backgroundColor = UIColor.orange
        btnBackToCust.addTarget(self, action:#selector(hideAddCustomerView), for: .touchUpInside)
        custAddView?.addSubview(btnBackToCust)
        
        //CREATING THE DELETE CUSTOMER SECTION
        
        let custDelSection: CGRect = CGRect(x:0, y:0, width:500, height: 900)
        custDelView = UIView(frame: custDelSection)
        custDelView?.backgroundColor = UIColor.white
        custDelView?.isHidden = true
        window?.addSubview(custDelView!)
        
        txtDelCustName = UITextField(frame: CGRect(x:125.0, y:200.0, width:200.0, height:30.0))
        txtDelCustName?.textAlignment = NSTextAlignment.center
        txtDelCustName?.textColor = UIColor.blue
        txtDelCustName?.backgroundColor = UIColor.white
        txtDelCustName?.borderStyle = UITextBorderStyle.line
        txtDelCustName?.autocapitalizationType = UITextAutocapitalizationType.words
        txtDelCustName?.clearButtonMode = .whileEditing
        txtDelCustName?.placeholder = "Enter Name"
        txtDelCustName?.keyboardType = .default
        txtDelCustName?.returnKeyType = .done
        custDelView?.addSubview(txtDelCustName!)
        
        let rectDelNameLbl:CGRect = CGRect(x:25,y:200,width:100,height:50)
        let lblDelCustName:UILabel = UILabel(frame: rectDelNameLbl)
        lblCustName.text="Name"
        custDelView?.addSubview(lblDelCustName)
        
        let btnDelCust: UIButton = UIButton(frame: CGRect(x: 50, y: 450, width: 150, height: 40))
        btnDelCust.setTitle("Delete", for: UIControlState.normal)
        btnDelCust.backgroundColor = UIColor.orange
        btnDelCust.addTarget(self, action:#selector(delCustomers), for: .touchUpInside)
        custDelView?.addSubview(btnDelCust)
        
        let btnDelBackToCust: UIButton = UIButton(frame: CGRect(x: 250, y: 450, width: 150, height: 40))
        btnDelBackToCust.setTitle("Back", for: UIControlState.normal)
        btnDelBackToCust.backgroundColor = UIColor.orange
        btnDelBackToCust.addTarget(self, action:#selector(hideDeleteCustomerView), for: .touchUpInside)
        custDelView?.addSubview(btnDelBackToCust)
        
        //CREATING THE MOVIES SECTION
        
        let movSection: CGRect = CGRect(x:0, y:0, width:500, height: 900);
        movView = UIView(frame: movSection)
        movView?.backgroundColor = UIColor.white
        movView?.isHidden = true
        window?.addSubview(movView!)
        
        
        
        let btnViewMov : UIButton = UIButton(frame: CGRect(x:100, y:150, width:200, height:40))
        btnViewMov.setTitle("View Movies", for: UIControlState.normal)
        btnViewMov.backgroundColor = UIColor.orange
        btnViewMov.addTarget(self, action:#selector(showMovieViewView), for: .touchUpInside)
        
        let btnAddMov : UIButton = UIButton(frame: CGRect(x:100, y:200, width:200, height:40))
        btnAddMov.setTitle("Add Movies", for: UIControlState.normal)
        btnAddMov.backgroundColor = UIColor.orange
        btnAddMov.addTarget(self, action:#selector(showAddMovieView), for: .touchUpInside)
        
        let btnDeleteMov : UIButton = UIButton(frame: CGRect(x:100, y:250, width:200, height:40))
        btnDeleteMov.setTitle("Delete Movies", for: UIControlState.normal)
        btnDeleteMov.backgroundColor = UIColor.orange
        btnDeleteMov.addTarget(self, action:#selector(showDeleteMovierView), for: .touchUpInside)
        
        let btnMBackToMain : UIButton = UIButton(frame: CGRect(x:100, y:350, width:200, height:40))
        btnMBackToMain.setTitle("Back", for: UIControlState.normal)
        btnMBackToMain.backgroundColor = UIColor.orange
        btnMBackToMain.addTarget(self, action:#selector(hideMovieView), for: .touchUpInside)
        
        
        movView?.addSubview(btnAddMov)
        movView?.addSubview(btnViewMov)
        movView?.addSubview(btnDeleteMov)
        movView?.addSubview(btnMBackToMain)
        
        //CREATING THE VIEW MOVIE SECTION
        let movViewSection : CGRect = CGRect(x:0, y:0, width:500, height: 900)
        movViewView = UIView(frame: movViewSection)
        movViewView?.backgroundColor = UIColor.white
        movViewView?.isHidden = true
        window?.addSubview(movViewView!)
        
        txtDispMovies = UITextView(frame: CGRect(x:100.0, y:200.0, width:500, height:700))
        let btnViewMBackToMain : UIButton = UIButton(frame: CGRect(x:100.0, y:100.0, width:200, height:40))
        btnViewMBackToMain.setTitle("Back", for: UIControlState.normal)
        btnViewMBackToMain.backgroundColor = UIColor.orange
        btnViewMBackToMain.addTarget(self, action:#selector(hideMovieViewView), for: .touchUpInside)
        movViewView?.addSubview(txtDispMovies!)
        movViewView?.addSubview(btnViewMBackToMain)
        
        //CREATING THE ADD MOVIE SECTION
        
        let movAddSection: CGRect = CGRect(x:0, y:0, width:500, height: 900)
        movAddView = UIView(frame: movAddSection)
        movAddView?.backgroundColor = UIColor.white
        movAddView?.isHidden = true
        window?.addSubview(movAddView!)
        
        txtMovName = UITextField(frame: CGRect(x:125.0, y:200.0, width:200.0, height:30.0))
        txtMovName?.textAlignment = NSTextAlignment.center
        txtMovName?.textColor = UIColor.blue
        txtMovName?.backgroundColor = UIColor.white
        txtMovName?.borderStyle = UITextBorderStyle.line
        txtMovName?.autocapitalizationType = UITextAutocapitalizationType.words
        txtMovName?.clearButtonMode = .whileEditing
        txtMovName?.placeholder = "Enter Name"
        txtMovName?.keyboardType = .default
        txtMovName?.returnKeyType = .done
        movAddView?.addSubview(txtMovName!)
        
        let rectMNameLbl:CGRect = CGRect(x:25,y:200,width:100,height:50)
        let lblMCustName:UILabel = UILabel(frame: rectMNameLbl)
        lblMCustName.text="Name"
        movAddView?.addSubview(lblMCustName)
        
        txtMovReleaseDate = UITextField(frame: CGRect(x:125.0, y:250.0, width:200.0, height:30.0))
        txtMovReleaseDate?.textAlignment = NSTextAlignment.center
        txtMovReleaseDate?.textColor = UIColor.blue
        txtMovReleaseDate?.backgroundColor = UIColor.white
        txtMovReleaseDate?.borderStyle = UITextBorderStyle.line
        txtMovReleaseDate?.autocapitalizationType = UITextAutocapitalizationType.words
        txtMovReleaseDate?.clearButtonMode = .whileEditing
        txtMovReleaseDate?.placeholder = "Enter Release Date"
        txtMovReleaseDate?.keyboardType = .default
        txtMovReleaseDate?.returnKeyType = .done
        movAddView?.addSubview(txtMovReleaseDate!)
        
        let rectReleseDateeLbl:CGRect = CGRect(x:25,y:250,width:100,height:50)
        let lblMReleaseDate:UILabel = UILabel(frame: rectReleseDateeLbl)
        lblMReleaseDate.text="Release Date"
        movAddView?.addSubview(lblMReleaseDate)
        
        
        
        txtMovType = UITextField(frame: CGRect(x:125.0, y:300.0, width:200.0, height:30.0))
        txtMovType?.textAlignment = NSTextAlignment.center
        txtMovType?.textColor = UIColor.blue
        txtMovType?.backgroundColor = UIColor.white
        txtMovType?.borderStyle = UITextBorderStyle.line
        txtMovType?.autocapitalizationType = UITextAutocapitalizationType.words
        txtMovType?.clearButtonMode = .whileEditing
        txtMovType?.placeholder = "Enter Type"
        txtMovType?.keyboardType = .default
        txtMovType?.returnKeyType = .done
        movAddView?.addSubview(txtMovType!)
        
        let rectMTypelLbl:CGRect = CGRect(x:25,y:300,width:100,height:50)
        let lblmovType:UILabel = UILabel(frame: rectMTypelLbl)
        lblmovType.text="Type"
        movAddView?.addSubview(lblmovType)
        
        
        txtMovQuantity = UITextField(frame: CGRect(x:125.0, y:350.0, width:200.0, height:30.0))
        txtMovQuantity?.textAlignment = NSTextAlignment.center
        txtMovQuantity?.textColor = UIColor.blue
        txtMovQuantity?.backgroundColor = UIColor.white
        txtMovQuantity?.borderStyle = UITextBorderStyle.line
        txtMovQuantity?.autocapitalizationType = UITextAutocapitalizationType.words
        txtMovQuantity?.clearButtonMode = .whileEditing
        txtMovQuantity?.placeholder = "Enter Quantity"
        txtMovQuantity?.keyboardType = .default
        txtMovQuantity?.returnKeyType = .done
        movAddView?.addSubview(txtMovQuantity!)
        
        let rectLblMQty:CGRect = CGRect(x:25,y:350,width:100,height:50)
        let lblmovQty:UILabel = UILabel(frame: rectLblMQty)
        lblmovQty.text="Quantity"
        movAddView?.addSubview(lblmovQty)
        
        let btnCreateMov: UIButton = UIButton(frame: CGRect(x: 50, y: 450, width: 150, height: 40))
        btnCreateMov.setTitle("Add", for: UIControlState.normal)
        btnCreateMov.backgroundColor = UIColor.orange
        btnCreateMov.addTarget(self, action:#selector(addMovie), for: .touchUpInside)
        movAddView?.addSubview(btnCreateMov)
        
        let btnBackToMov: UIButton = UIButton(frame: CGRect(x: 250, y: 450, width: 150, height: 40))
        btnBackToMov.setTitle("Back", for: UIControlState.normal)
        btnBackToMov.backgroundColor = UIColor.orange
        btnBackToMov.addTarget(self, action:#selector(hideAddMovieView), for: .touchUpInside)
        movAddView?.addSubview(btnBackToMov)
        
        //CREATING THE DELETE MOVIE SECTION
        
        let movDelSection: CGRect = CGRect(x:0, y:0, width:500, height: 900)
        movDelView = UIView(frame: movDelSection)
        movDelView?.backgroundColor = UIColor.white
        movDelView?.isHidden = true
        window?.addSubview(movDelView!)
        
        txtDelMovtName = UITextField(frame: CGRect(x:125.0, y:200.0, width:200.0, height:30.0))
        txtDelMovtName?.textAlignment = NSTextAlignment.center
        txtDelMovtName?.textColor = UIColor.blue
        txtDelMovtName?.backgroundColor = UIColor.white
        txtDelMovtName?.borderStyle = UITextBorderStyle.line
        txtDelMovtName?.autocapitalizationType = UITextAutocapitalizationType.words
        txtDelMovtName?.clearButtonMode = .whileEditing
        txtDelMovtName?.placeholder = "Enter Name"
        txtDelMovtName?.keyboardType = .default
        txtDelMovtName?.returnKeyType = .done
        movDelView?.addSubview(txtDelMovtName!)
        
        let rectMDelNameLbl:CGRect = CGRect(x:25,y:200,width:100,height:50)
        let lblDelMovName:UILabel = UILabel(frame: rectMDelNameLbl)
        lblDelMovName.text="Name"
        movDelView?.addSubview(lblDelMovName)
        
        let btnDelMov: UIButton = UIButton(frame: CGRect(x: 50, y: 450, width: 150, height: 40))
        btnDelMov.setTitle("Delete", for: UIControlState.normal)
        btnDelMov.backgroundColor = UIColor.orange
        btnDelMov.addTarget(self, action:#selector(delMovie), for: .touchUpInside)
        movDelView?.addSubview(btnDelMov)
        
        let btnDelBackToMov: UIButton = UIButton(frame: CGRect(x: 250, y: 450, width: 150, height: 40))
        btnDelBackToMov.setTitle("Back", for: UIControlState.normal)
        btnDelBackToMov.backgroundColor = UIColor.orange
        btnDelBackToMov.addTarget(self, action:#selector(hideDeleteMovieView), for: .touchUpInside)
        movDelView?.addSubview(btnDelBackToMov)
        
        //CREATING THE BOOKINGS SECTION
        
        let bookSection: CGRect = CGRect(x:0, y:0, width:500, height: 900);
        bookView = UIView(frame: bookSection)
        bookView?.backgroundColor = UIColor.white
        bookView?.isHidden = true
        window?.addSubview(bookView!)
        
        
        
        let btnViewBook : UIButton = UIButton(frame: CGRect(x:100, y:150, width:200, height:40))
        btnViewBook.setTitle("View Bookings", for: UIControlState.normal)
        btnViewBook.backgroundColor = UIColor.orange
        btnViewBook.addTarget(self, action:#selector(showBookingViewView), for: .touchUpInside)
        
        let btnAddBook : UIButton = UIButton(frame: CGRect(x:100, y:200, width:200, height:40))
        btnAddBook.setTitle("Add Bookings", for: UIControlState.normal)
        btnAddBook.backgroundColor = UIColor.orange
        btnAddBook.addTarget(self, action:#selector(showAddBookingView), for: .touchUpInside)
        
        let btnDeleteBook : UIButton = UIButton(frame: CGRect(x:100, y:250, width:200, height:40))
        btnDeleteBook.setTitle("Delete Bookings", for: UIControlState.normal)
        btnDeleteBook.backgroundColor = UIColor.orange
        btnDeleteBook.addTarget(self, action:#selector(showDeleteBookingView), for: .touchUpInside)
        
        let btnBBackToMain : UIButton = UIButton(frame: CGRect(x:100, y:350, width:200, height:40))
        btnBBackToMain.setTitle("Back", for: UIControlState.normal)
        btnBBackToMain.backgroundColor = UIColor.orange
        btnBBackToMain.addTarget(self, action:#selector(hideBookingView), for: .touchUpInside)
        
        
        bookView?.addSubview(btnViewBook)
        bookView?.addSubview(btnAddBook)
        bookView?.addSubview(btnDeleteBook)
        bookView?.addSubview(btnBBackToMain)
        
        //CREATING THE VIEW BOOKING SECTION
        let bookViewSection : CGRect = CGRect(x:0, y:0, width:500, height: 900)
        bookViewView = UIView(frame: bookViewSection)
        bookViewView?.backgroundColor = UIColor.white
        bookViewView?.isHidden = true
        window?.addSubview(bookViewView!)
        
        txtDispBookings = UITextView(frame: CGRect(x:100.0, y:350.0, width:500, height:700))
        let btnBViewBackToMain : UIButton = UIButton(frame: CGRect(x:100.0, y:100.0, width:200, height:40))
        btnBViewBackToMain.setTitle("Back", for: UIControlState.normal)
        btnBViewBackToMain.backgroundColor = UIColor.orange
        btnBViewBackToMain.addTarget(self, action:#selector(hideBookingViewView), for: .touchUpInside)
        bookViewView?.addSubview(txtDispBookings!)
        bookViewView?.addSubview(btnBViewBackToMain)
        
        txtSreachSpecBook = UITextField(frame: CGRect(x:125.0, y:200.0, width:200.0, height:30.0))
        txtSreachSpecBook?.textAlignment = NSTextAlignment.center
        txtSreachSpecBook?.textColor = UIColor.blue
        txtSreachSpecBook?.backgroundColor = UIColor.white
        txtSreachSpecBook?.borderStyle = UITextBorderStyle.line
        txtSreachSpecBook?.autocapitalizationType = UITextAutocapitalizationType.words
        txtSreachSpecBook?.clearButtonMode = .whileEditing
        txtSreachSpecBook?.placeholder = "Enter ID"
        txtSreachSpecBook?.keyboardType = .default
        txtSreachSpecBook?.returnKeyType = .done
        bookViewView?.addSubview(txtSreachSpecBook!)
        
        let rectSearchSpecLbl:CGRect = CGRect(x:25,y:200,width:100,height:50)
        let lblSearchSpec:UILabel = UILabel(frame: rectSearchSpecLbl)
        lblSearchSpec.text="Search Spec"
        bookViewView?.addSubview(lblSearchSpec)
        
        let btnSearchSpec : UIButton = UIButton(frame: CGRect(x:100, y:250, width:200, height:40))
        btnSearchSpec.setTitle("Search", for: UIControlState.normal)
        btnSearchSpec.backgroundColor = UIColor.orange
        btnSearchSpec.addTarget(self, action:#selector(searchBookings), for: .touchUpInside)
        bookViewView?.addSubview(btnSearchSpec)
        
        //CREATING THE ADD BOOKING SECTION
        
        let bookAddSection: CGRect = CGRect(x:0, y:0, width:500, height: 900)
        bookAddView = UIView(frame: bookAddSection)
        bookAddView?.backgroundColor = UIColor.white
        bookAddView?.isHidden = true
        window?.addSubview(bookAddView!)
        
        txtBookCust = UITextField(frame: CGRect(x:125.0, y:200.0, width:200.0, height:30.0))
        txtBookCust?.textAlignment = NSTextAlignment.center
        txtBookCust?.textColor = UIColor.blue
        txtBookCust?.backgroundColor = UIColor.white
        txtBookCust?.borderStyle = UITextBorderStyle.line
        txtBookCust?.autocapitalizationType = UITextAutocapitalizationType.words
        txtBookCust?.clearButtonMode = .whileEditing
        txtBookCust?.placeholder = "Customer Name"
        txtBookCust?.keyboardType = .default
        txtBookCust?.returnKeyType = .done
        bookAddView?.addSubview(txtBookCust!)
        
        let rectBCustLbl:CGRect = CGRect(x:25,y:200,width:100,height:50)
        let lblBCust:UILabel = UILabel(frame: rectBCustLbl)
        lblBCust.text="Customer"
        bookAddView?.addSubview(lblBCust)
        
        txtBookMov = UITextField(frame: CGRect(x:125.0, y:250.0, width:200.0, height:30.0))
        txtBookMov?.textAlignment = NSTextAlignment.center
        txtBookMov?.textColor = UIColor.blue
        txtBookMov?.backgroundColor = UIColor.white
        txtBookMov?.borderStyle = UITextBorderStyle.line
        txtBookMov?.autocapitalizationType = UITextAutocapitalizationType.words
        txtBookMov?.clearButtonMode = .whileEditing
        txtBookMov?.placeholder = "Movie Name"
        txtBookMov?.keyboardType = .default
        txtBookMov?.returnKeyType = .done
        bookAddView?.addSubview(txtBookMov!)
        
        let rectBMovLbl:CGRect = CGRect(x:25,y:250,width:100,height:50)
        let lblBMov:UILabel = UILabel(frame: rectBMovLbl)
        lblBMov.text="Movie"
        bookAddView?.addSubview(lblBMov)
        
        
        
        txtBookQuantity = UITextField(frame: CGRect(x:125.0, y:300.0, width:200.0, height:30.0))
        txtBookQuantity?.textAlignment = NSTextAlignment.center
        txtBookQuantity?.textColor = UIColor.blue
        txtBookQuantity?.backgroundColor = UIColor.white
        txtBookQuantity?.borderStyle = UITextBorderStyle.line
        txtBookQuantity?.autocapitalizationType = UITextAutocapitalizationType.words
        txtBookQuantity?.clearButtonMode = .whileEditing
        txtBookQuantity?.placeholder = "Enter Quantity"
        txtBookQuantity?.keyboardType = .default
        txtBookQuantity?.returnKeyType = .done
        bookAddView?.addSubview(txtBookQuantity!)
        
        let rectBQtylLbl:CGRect = CGRect(x:25,y:300,width:100,height:50)
        let lblBookQty:UILabel = UILabel(frame: rectBQtylLbl)
        lblBookQty.text="Quantity"
        bookAddView?.addSubview(lblBookQty)
        
        
        txtDateOfBook = UITextField(frame: CGRect(x:125.0, y:350.0, width:200.0, height:30.0))
        txtDateOfBook?.textAlignment = NSTextAlignment.center
        txtDateOfBook?.textColor = UIColor.blue
        txtDateOfBook?.backgroundColor = UIColor.white
        txtDateOfBook?.borderStyle = UITextBorderStyle.line
        txtDateOfBook?.autocapitalizationType = UITextAutocapitalizationType.words
        txtDateOfBook?.clearButtonMode = .whileEditing
        txtDateOfBook?.placeholder = "Booking Date"
        txtDateOfBook?.keyboardType = .default
        txtDateOfBook?.returnKeyType = .done
        bookAddView?.addSubview(txtDateOfBook!)
        
        let rectLblDOB:CGRect = CGRect(x:25,y:350,width:100,height:50)
        let lblDOB:UILabel = UILabel(frame: rectLblDOB)
        lblDOB.text="Booking Date"
        bookAddView?.addSubview(lblDOB)
        
        txtDateOfReturn = UITextField(frame: CGRect(x:125.0, y:400.0, width:200.0, height:30.0))
        txtDateOfReturn?.textAlignment = NSTextAlignment.center
        txtDateOfReturn?.textColor = UIColor.blue
        txtDateOfReturn?.backgroundColor = UIColor.white
        txtDateOfReturn?.borderStyle = UITextBorderStyle.line
        txtDateOfReturn?.autocapitalizationType = UITextAutocapitalizationType.words
        txtDateOfReturn?.clearButtonMode = .whileEditing
        txtDateOfReturn?.placeholder = "Return Date"
        txtDateOfReturn?.keyboardType = .default
        txtDateOfReturn?.returnKeyType = .done
        bookAddView?.addSubview(txtDateOfReturn!)
        
        let rectLblDOR:CGRect = CGRect(x:25,y:400,width:100,height:50)
        let lblDOR:UILabel = UILabel(frame: rectLblDOR)
        lblDOR.text="Return Date"
        bookAddView?.addSubview(lblDOR)
        
        let btnCreateBook: UIButton = UIButton(frame: CGRect(x: 50, y: 450, width: 150, height: 40))
        btnCreateBook.setTitle("Add", for: UIControlState.normal)
        btnCreateBook.backgroundColor = UIColor.orange
        btnCreateBook.addTarget(self, action:#selector(addBooking), for: .touchUpInside)
        bookAddView?.addSubview(btnCreateBook)
        
        let btnBBackToCust: UIButton = UIButton(frame: CGRect(x: 250, y: 450, width: 150, height: 40))
        btnBBackToCust.setTitle("Back", for: UIControlState.normal)
        btnBBackToCust.backgroundColor = UIColor.orange
        btnBBackToCust.addTarget(self, action:#selector(hideAddBookingView), for: .touchUpInside)
        bookAddView?.addSubview(btnBBackToCust)

        //CREATING THE DELETE BOOKING SECTION
        
        let bookDelSection: CGRect = CGRect(x:0, y:0, width:500, height: 900)
        bookDelView = UIView(frame: bookDelSection)
        bookDelView?.backgroundColor = UIColor.white
        bookDelView?.isHidden = true
        window?.addSubview(bookDelView!)
        
        txtDelBookId = UITextField(frame: CGRect(x:125.0, y:200.0, width:200.0, height:30.0))
        txtDelBookId?.textAlignment = NSTextAlignment.center
        txtDelBookId?.textColor = UIColor.blue
        txtDelBookId?.backgroundColor = UIColor.white
        txtDelBookId?.borderStyle = UITextBorderStyle.line
        txtDelBookId?.autocapitalizationType = UITextAutocapitalizationType.words
        txtDelBookId?.clearButtonMode = .whileEditing
        txtDelBookId?.placeholder = "Enter ID"
        txtDelBookId?.keyboardType = .default
        txtDelBookId?.returnKeyType = .done
        bookDelView?.addSubview(txtDelBookId!)
        
        let rectDelIDLbl:CGRect = CGRect(x:25,y:200,width:100,height:50)
        let lblDelBID:UILabel = UILabel(frame: rectDelIDLbl)
        lblDelBID.text="Booking ID"
        bookDelView?.addSubview(lblDelBID)
        
        let btnDelBook: UIButton = UIButton(frame: CGRect(x: 50, y: 450, width: 150, height: 40))
        btnDelBook.setTitle("Delete", for: UIControlState.normal)
        btnDelBook.backgroundColor = UIColor.orange
        btnDelBook.addTarget(self, action:#selector(delBooking), for: .touchUpInside)
        bookDelView?.addSubview(btnDelBook)
        
        let btnDelBackToBook: UIButton = UIButton(frame: CGRect(x: 250, y: 450, width: 150, height: 40))
        btnDelBackToBook.setTitle("Back", for: UIControlState.normal)
        btnDelBackToBook.backgroundColor = UIColor.orange
        btnDelBackToBook.addTarget(self, action:#selector(hideDeleteBookingView), for: .touchUpInside)
        bookDelView?.addSubview(btnDelBackToBook)
        
        
        return true
    }
    
    //MOVIE FUNC
    
    func showCustomerView() {
        custView?.isHidden = false
    }
    
    func hideCustomerView() {
        custView?.isHidden = true
    }
    
    func showCustomerViewView() {
        custViewView?.isHidden = false
    }
    
    func hideCustomerViewView() {
        custViewView?.isHidden = true
    }
    
    func showAddCustomerView(){
        custAddView?.isHidden = false
    }
    
    func hideAddCustomerView(){
        custAddView?.isHidden = true
    }
    
    func showDeleteCustomerView(){
        custDelView?.isHidden = false
    }
    
    func hideDeleteCustomerView(){
        custDelView?.isHidden = true
    }
    
    func addCustomer() {
        let cName : String! = txtCustName?.text
        let cStringAge : String! = txtCustAge?.text
        let cAge : Int = (cStringAge as NSString).integerValue
        let cEmail : String! = txtCustEmail?.text
        let cAddr: String! = txtCustAddress?.text
        
        cust.createCustomer(name: cName, age: cAge, email: cEmail, address: cAddr)
        
        txtCustName?.text = ""
        txtCustAge?.text = ""
        txtCustEmail?.text = ""
        txtCustAddress?.text = ""
        
        let alert = UIAlertView()
        alert.title = "Alert"
        alert.message = "Customer Added"
        alert.addButton(withTitle: "Okay")
        alert.show()
        for c in cust.CustArray{
            txtDispCustomers?.text = c.Name
        }
    }
    
    func delCustomers(){
        let delCName : String! = txtDelCustName?.text
        for c in cust.CustArray{
            if(c.Name==delCName){
                cust.deleteCustomer(deleteCust: c)
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "Customer Deleted Successfully"
                alert.addButton(withTitle: "Okay")
                alert.show()
            }
        }
        for c in cust.CustArray{
            txtDispCustomers?.text = c.Name
        }
    }
    
    //MOVIE FUNCS
    
    func showMovieView() {
        movView?.isHidden = false
    }
    
    func hideMovieView() {
        movView?.isHidden = true
    }
    
    func showMovieViewView() {
        movViewView?.isHidden = false
    }
    
    func hideMovieViewView() {
        movViewView?.isHidden = true
    }
    
    func showAddMovieView()  {
        movAddView?.isHidden = false
    }
    
    func hideAddMovieView()  {
        movAddView?.isHidden = true
    }
    
    func showDeleteMovierView(){
        movDelView?.isHidden = false
    }
    
    func hideDeleteMovieView(){
        movDelView?.isHidden = true
    }
    
    func addMovie() {
        let mName : String! = txtMovName?.text
        let mRelDat : String! = txtMovReleaseDate?.text
        let mType : String! = txtMovType?.text
        let mStringQty : String! = txtMovQuantity?.text
        let mQty : Int = (mStringQty as NSString).integerValue
        
        movie.createMovie(name: mName, typeg: mType, releaseDate: mRelDat, quantity: mQty)
        
        txtMovName?.text = ""
        txtMovReleaseDate?.text = ""
        txtMovType?.text = ""
        txtMovQuantity?.text = ""
        
        let alert = UIAlertView()
        alert.title = "Alert"
        alert.message = "Movie Added"
        alert.addButton(withTitle: "Okay")
        alert.show()
        for m in movie.MovArray{
            txtDispMovies?.text = mName
        }
    }
    
    func delMovie(){
        let delMName : String! = txtDelMovtName?.text
        for m in movie.MovArray{
            if(m.Name==delMName){
                movie.deleteMovie(deleteMov: m)
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "Movie Deleted Successfully"
                alert.addButton(withTitle: "Okay")
                alert.show()
            }
        }
        for m in movie.MovArray{
            txtDispMovies?.text = m.Name
        }
    }
    
    //BOOKING FUNCTIONS
    
    func showBookingView() {
        bookView?.isHidden = false
    }
    
    func hideBookingView() {
        bookView?.isHidden = true
    }
    
    func showBookingViewView() {
        bookViewView?.isHidden = false
    }
    
    func hideBookingViewView() {
        bookViewView?.isHidden = true
    }
    
    func showAddBookingView(){
        bookAddView?.isHidden = false
    }
    
    func hideAddBookingView(){
        bookAddView?.isHidden = true
    }
    
    func showDeleteBookingView(){
        bookDelView?.isHidden = false
    }
    
    func hideDeleteBookingView(){
        bookDelView?.isHidden = true
    }
    
    func addBooking() {
        let bCustomer : String! = txtBookCust?.text
        let bMovie : String! = txtBookMov?.text
        let bStringQty : String! = txtBookQuantity?.text
        let bQty : Int = (bStringQty as NSString).integerValue
        let DOB : String! = txtDateOfBook?.text
        let DOR: String! = txtDateOfReturn?.text
        
        var bookCust: Customer? = nil
        var  bookMovie: Movies? = nil
        
        for c in cust.CustArray{
            if c.Name == bCustomer{
                bookCust  = c
            }
        }
        
        for m in movie.MovArray{
            if m.Name==bMovie{
                bookMovie = m
            }
        }
        
        booking.createBooking(custName: bookCust, movName: bookMovie, dateOfBooking: DOB, dateOfReturn: DOR, quantity: bQty)
        
        
        txtBookCust?.text = ""
        txtBookMov?.text = ""
        txtBookQuantity?.text = ""
        txtDateOfBook?.text = ""
        txtDateOfReturn?.text = ""
        
        let alert = UIAlertView()
        alert.title = "Alert"
        alert.message = "Booking Added"
        alert.addButton(withTitle: "Okay")
        alert.show()
        for b in booking.BookArray{
            txtDispBookings?.text = b.DateOfBooking
        }
    }
    
    func delBooking(){
        let StringdelBID : String! = txtDelBookId?.text
        let deleteBookID : Int = (StringdelBID as NSString).integerValue
        for b in booking.BookArray{
            if(b.Id==deleteBookID){
                booking.deleteBooking(deleteBook: b)
                let alert = UIAlertView()
                alert.title = "Alert"
                alert.message = "Booking Deleted Successfully"
                alert.addButton(withTitle: "Okay")
                alert.show()
            }
        }
        for b in booking.BookArray{
            txtDispBookings?.text = b.DateOfBooking
        }
    }
    
    func searchBookings() {
        let stringSearchID : String! = txtSreachSpecBook?.text
        let searchID : Int = (stringSearchID as NSString).integerValue
        for b in booking.BookArray{
            if(b.Id == searchID){
                txtDispBookings?.text = b.DateOfBooking
            }
        }
    }
    
    

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
			
}

