//
//  ViewController.swift
//  MultipleCustomTableViewCellsStudy
//
//  Created by Ömer Faruk Kılıçaslan on 12.07.2022.
//

import UIKit

class ViewController: UIViewController {

    
    private let tableView: UITableView = {
        
        let table = UITableView()
        
        table.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
        
        table.register(ImageTableViewCell.nib(), forCellReuseIdentifier: ImageTableViewCell.identifier)
        
        table.register(CenteredImageTableViewCell.nib(), forCellReuseIdentifier: CenteredImageTableViewCell.identifier)
        
        table.register(CodedTableViewCell.self, forCellReuseIdentifier: CodedTableViewCell.identifier)
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < 3 {
            //Show image cell
            let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier, for: indexPath) as! ImageTableViewCell
            cell.configure(with: "image1")
            return cell
            
        }
        
        else if indexPath.row < 6 {
            //Show coded Image cell
            let cell = tableView.dequeueReusableCell(withIdentifier: CodedTableViewCell.identifier, for: indexPath) as! CodedTableViewCell
            cell.configure()
            return cell
     
        }
        
        else if indexPath.row < 9 {
            //Show centeredImage cell
            let cell = tableView.dequeueReusableCell(withIdentifier: CenteredImageTableViewCell.identifier, for: indexPath) as! CenteredImageTableViewCell
            cell.configure(with: "image2")
            return cell
     
        }
        
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier, for: indexPath)
            cell.textLabel?.text = "Hello World"
            return cell
        
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}

