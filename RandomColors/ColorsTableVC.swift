//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Іван Штурхаль on 10.09.2023.
//

import UIKit

// table views and collection views -  ALWAYS TAKE AN ARRAY!!!

class ColorsTableVC: UIViewController {
    
    // table views and collection views -  ALWAYS TAKE AN ARRAY!!!
    // create an empty array
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }
    
    // create lop for append random color in empty array
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(createRandomColor())
        } 
    }
    // create func that creates new random color
    func createRandomColor() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
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
    // did what when cell is selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }
    
}

