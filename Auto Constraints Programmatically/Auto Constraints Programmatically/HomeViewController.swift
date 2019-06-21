//
//  HomeViewController.swift
//  Auto Constraints Programmatically
//
//  Created by Chris Harling on 6/21/19.
//  Copyright © 2019 Chris Harling. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let baseballImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "baseball"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let imageTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Baseball"
        label.font = UIFont(name: "Times", size: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(baseballImageView)
        view.addSubview(imageTitleLabel)
        
        setupViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupViews() {
        baseballImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        baseballImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        baseballImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        baseballImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        baseballImageView.contentMode = .scaleAspectFit
        
        imageTitleLabel.topAnchor.constraint(equalTo: baseballImageView.bottomAnchor, constant: 0).isActive = true
        imageTitleLabel.leftAnchor.constraint(equalTo: baseballImageView.leftAnchor).isActive = true
        imageTitleLabel.rightAnchor.constraint(equalTo: baseballImageView.rightAnchor).isActive = true
        imageTitleLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

