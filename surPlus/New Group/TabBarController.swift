//
//  TabBarController.swift
//  surPlus
//
//  Created by Alona Trekhlib on 4/28/19.
//  Copyright © 2019 Alona Trekhlib. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    @IBInspectable var defaultIndex: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = defaultIndex
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
