//
//  ViewController.swift
//  RecipeApp
//
//  Created by DCS on 05/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "RecipeApp"
        label.font = .boldSystemFont(ofSize: 38)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "chef.png")
        imageView.backgroundColor = .clear
        return imageView
    }()
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Let's Go", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.white.withAlphaComponent(0.8)
        button.addTarget(self, action: #selector(MoveToTableView), for: .touchUpInside)
        button.layer.cornerRadius = 35
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myImageView)
        view.addSubview(myButton)
        view.addSubview(myLabel)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"bg1.jpg")!)
    }
    @objc func MoveToTableView(){
        let vc = TableView()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        myImageView.frame = CGRect(x: 40, y: view.height/2-50, width: view.width-50, height: 500)
        myButton.frame = CGRect(x: 40, y: view.height/2-80, width: view.width-80, height: 60)
        myLabel.frame = CGRect(x: 40, y: view.height/2-200, width: view.width-80, height: 60)
    }
}

