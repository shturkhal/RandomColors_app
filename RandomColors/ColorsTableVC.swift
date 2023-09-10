//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Іван Штурхаль on 10.09.2023.
//

import UIKit

class ColorsTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
    
    //MARK: example of perform segue
//    @IBAction func tempButtonTapped(_ sender: UIButton) {
//        // представити інший вʼю через ідентіфаер переходу
//        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
//    }
    
}
