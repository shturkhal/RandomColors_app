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
    
    // create enums with static let for string elements
    enum Cells {
       static let colorCell = "ColorCell"
    }
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }
    // create lop for append random color in empty array
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    
    // create func that creates new random color - GO TO UIColor+Ext extension
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // create destination with casting
        let nextVC = segue.destination as! ColorsDetailVC
        nextVC.color = sender as? UIColor
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
        // when array was created, we can change return to array.count, and now its dynamic
        return colors.count
    }
    // and this tells me what to show in this rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create cell with identifier, if its ? - with GUARD
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else { return UITableViewCell() }
        // create color cells full with index path(who nows how many cell we need)
       /// let color = colors[indexPath.row]
        // now fill cell with background color
       /// cell?.backgroundColor = color
        // advanced version of this two functions
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
    // did what when cell is selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // we send color to selected row
        let color = colors[indexPath.row]
        // in sender we select what we want to send at the next VC -  go up tp prepere for segue
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
    
}

