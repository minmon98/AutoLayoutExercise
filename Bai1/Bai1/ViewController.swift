//
//  ViewController.swift
//  Bai1
//
//  Created by Minh Mon on 7/15/19.
//  Copyright © 2019 Minh Mon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let viewDo: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9792149663, green: 0.2601875961, blue: 0.2299418151, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewXanhDuong: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2633156776, green: 0.6751528382, blue: 0.952183187, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewCam: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9923394322, green: 0.6602403522, blue: 0.3386198878, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewXanhLa: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.362906307, green: 0.9014629722, blue: 0.369756341, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewTrang: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addComponents()
        self.autolayout()
    }

    func addComponents() {
        self.view.addSubview(self.viewDo)
        self.view.addSubview(self.viewXanhDuong)
        self.view.addSubview(self.viewCam)
        self.view.addSubview(self.viewXanhLa)
        self.view.addSubview(self.viewTrang)
    }
    
    func autolayout() {
        //autolayout viewDo
        self.viewDo.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        self.viewDo.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        self.viewDo.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        self.viewDo.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/2).isActive = true
    
        //autolayout viewXanhDuong
        self.viewXanhDuong.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        self.viewXanhDuong.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        self.viewXanhDuong.widthAnchor.constraint(equalTo: self.viewDo.widthAnchor, multiplier: 1/2).isActive = true
        self.viewXanhDuong.heightAnchor.constraint(equalTo: self.viewDo.heightAnchor, multiplier: 1).isActive = true
        
        //autolayout viewCam
        self.viewCam.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
        self.viewCam.topAnchor.constraint(equalTo: self.viewDo.bottomAnchor, constant: 0).isActive = true
        self.viewCam.widthAnchor.constraint(equalTo: self.viewXanhDuong.widthAnchor, multiplier: 1).isActive = true
        self.viewCam.heightAnchor.constraint(equalTo: self.viewXanhDuong.heightAnchor, multiplier: 1/2).isActive = true
        
        //autolayout viewXanhLa
        self.viewXanhLa.leftAnchor.constraint(equalTo: self.viewXanhDuong.rightAnchor, constant: 0).isActive = true
        self.viewXanhLa.topAnchor.constraint(equalTo: self.viewCam.bottomAnchor, constant: 0).isActive = true
        self.viewXanhLa.widthAnchor.constraint(equalTo: self.viewCam.widthAnchor, multiplier: 1/2).isActive = true
        self.viewXanhLa.heightAnchor.constraint(equalTo: self.viewCam.heightAnchor, multiplier: 1).isActive = true
        
        //autolayout viewTrang
        self.viewTrang.leftAnchor.constraint(equalTo: self.viewXanhLa.rightAnchor, constant: 0).isActive = true
        self.viewTrang.topAnchor.constraint(equalTo: self.viewCam.bottomAnchor, constant: 0).isActive = true
        self.viewTrang.widthAnchor.constraint(equalTo: self.viewCam.widthAnchor, multiplier: 1/2).isActive = true
        self.viewTrang.heightAnchor.constraint(equalTo: self.viewCam.heightAnchor, multiplier: 1).isActive = true
    }
}

