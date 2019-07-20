//
//  ViewController.swift
//  Contacts
//
//  Created by Yoel Lev on 25/01/2019.
//  Copyright © 2019 Yoel Lev. All rights reserved.
//

import UIKit
import CoreDataFramework

class ViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        
        CoreDataManager.shared.createPerson(firstname: "John", lastname: "Doe", age: 35)
        CoreDataManager.shared.createPerson(firstname: "Liam", lastname: "Croft", age: 27)
        CoreDataManager.shared.createPerson(firstname: "Oliver", lastname: "Twist", age: 15)
        CoreDataManager.shared.createPerson(firstname: "Luke", lastname: "Skywalker", age: 70)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        CoreDataManager.shared.fetch()
    }
}

