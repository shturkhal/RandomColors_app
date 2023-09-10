//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Іван Штурхаль on 10.09.2023.
//

import UIKit

class ColorsTableVC: UIViewController {
  
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
 
    
    
    
    //MARK: example of perform segue
//    @IBAction func tempButtonTapped(_ sender: UIButton) {
//        // представити інший вʼю через ідентіфаер переходу
//        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
//    }
    
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    // this is tells how many rows i need to show
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    // and this tells me what to show in this rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }
    
}

