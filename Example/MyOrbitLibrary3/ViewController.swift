//
//  ViewController.swift
//  MyOrbitLibrary3
//
//  Created by Doni Setiawan on 08/08/2023.
//  Copyright (c) 2023 Doni Setiawan. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func selected(_ sender: UIButton){
        print("cliceked")
        
        //Code to get the url of the main.jsbundle in the project.
        guard let jsBundleLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle") else {return}
        //The data is used as initialProperties to React Native App.
           let data:NSDictionary = [:]; //We can use this parameter to pass the data to the React native App from the Native App.
        //The RCTRootView is a native view used to host React-managed views within the app. Can be used just like any ordinary UIView.
           let rootView = RCTRootView(
        bundleURL: jsBundleLocation,
        moduleName: "Bakesale",
        initialProperties: data as [NSObject : AnyObject],
        launchOptions: nil)
        let viewController = UIViewController()
        viewController.view = rootView
        self.present(viewController, animated: true, completion: nil)
    }
}

