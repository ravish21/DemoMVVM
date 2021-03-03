//
//  ViewController.swift
//  Demo
//
//  Created by Ravish Kumar on 03/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var listTableView: UITableView!
    var testViewModel: TestViewModel = TestViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        listTableView.delegate = self
        listTableView.dataSource = self
        listTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return testViewModel.numberOfSection()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Alphabet"
        }else {
            return "Numbers"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return testViewModel.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath)
        if indexPath.section == 0 {
            cell.textLabel?.text = testViewModel.alphaArray[indexPath.row].item
        }else {
            cell.textLabel?.text = testViewModel.numericArray[indexPath.row].item
        }
       
        
        
        return cell
    }
    
    
    
}

