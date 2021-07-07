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
        let leadingDo = NSLayoutConstraint(item: self.viewDo, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let topDo = NSLayoutConstraint(item: self.viewDo, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0)
        let widthDo = NSLayoutConstraint(item: self.viewDo, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 1, constant: 0)
        let heightDo = NSLayoutConstraint(item: self.viewDo, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/2, constant: 0)
        view.addConstraints([leadingDo, topDo, widthDo, heightDo])

        //autolayout viewXanhDuong
        let leadingXanhDuong = NSLayoutConstraint(item: self.viewXanhDuong, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let bottomXanhDuong = NSLayoutConstraint(item: self.viewXanhDuong, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: 0)
        let widthXanhDuong = NSLayoutConstraint(item: self.viewXanhDuong, attribute: .width, relatedBy: .equal, toItem: self.viewDo, attribute: .width, multiplier: 1/2, constant: 0)
        let heightXanhDuong = NSLayoutConstraint(item: self.viewXanhDuong, attribute: .height, relatedBy: .equal, toItem: self.viewDo, attribute: .height, multiplier: 1, constant: 0)
        view.addConstraints([leadingXanhDuong, bottomXanhDuong, widthXanhDuong, heightXanhDuong])
    
        //autolayout viewCam
        let rightCam = NSLayoutConstraint(item: self.viewCam, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
        let topCam = NSLayoutConstraint(item: self.viewCam, attribute: .top, relatedBy: .equal, toItem: self.viewDo, attribute: .bottom, multiplier: 1, constant: 0)
        let widthCam = NSLayoutConstraint(item: self.viewCam, attribute: .width, relatedBy: .equal, toItem: self.viewXanhDuong, attribute: .width, multiplier: 1, constant: 0)
        let heightCam = NSLayoutConstraint(item: self.viewCam, attribute: .height, relatedBy: .equal, toItem: self.viewXanhDuong, attribute: .height, multiplier: 1/2, constant: 0)
        view.addConstraints([rightCam, topCam, widthCam, heightCam])
    
        //autolayout viewXanhLa
        let leadingXanhLa = NSLayoutConstraint(item: self.viewXanhLa, attribute: .leading, relatedBy: .equal, toItem: self.viewXanhDuong, attribute: .trailing, multiplier: 1, constant: 0)
        let topXanhLa = NSLayoutConstraint(item: self.viewXanhLa, attribute: .top, relatedBy: .equal, toItem: self.viewCam, attribute: .bottom, multiplier: 1, constant: 0)
        let widthXanhLa = NSLayoutConstraint(item: self.viewXanhLa, attribute: .width, relatedBy: .equal, toItem: self.viewCam, attribute: .width, multiplier: 1/2, constant: 0)
        let heightXanhLa = NSLayoutConstraint(item: self.viewXanhLa, attribute: .height, relatedBy: .equal, toItem: self.viewCam, attribute: .height, multiplier: 1, constant: 0)
        view.addConstraints([leadingXanhLa, topXanhLa, widthXanhLa, heightXanhLa])
        
        //autolayout viewTrang
        let leadingTrang = NSLayoutConstraint(item: self.viewTrang, attribute: .leading, relatedBy: .equal, toItem: self.viewXanhLa, attribute: .trailing, multiplier: 1, constant: 0)
        let topTrang = NSLayoutConstraint(item: self.viewTrang, attribute: .top, relatedBy: .equal, toItem: self.viewCam, attribute: .bottom, multiplier: 1, constant: 0)
        let widthTrang = NSLayoutConstraint(item: self.viewTrang, attribute: .width, relatedBy: .equal, toItem: self.viewCam, attribute: .width, multiplier: 1/2, constant: 0)
        let heightTrang = NSLayoutConstraint(item: self.viewTrang, attribute: .height, relatedBy: .equal, toItem: self.viewCam, attribute: .height, multiplier: 1, constant: 0)
        view.addConstraints([leadingTrang, topTrang, widthTrang, heightTrang])
    }
}

