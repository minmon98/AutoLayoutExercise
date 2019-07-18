//
//  ViewController.swift
//  Bai2
//
//  Created by Minh Mon on 7/18/19.
//  Copyright © 2019 Minh Mon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Properties
    var btnBang: UIButton!
    var btnCong: UIButton!
    var btnTru: UIButton!
    var btnNhan: UIButton!
    var btnChia: UIButton!
    var btnCham: UIButton!
    var btnKhong: UIButton!
    var btnMot: UIButton!
    var btnHai: UIButton!
    var btnBa: UIButton!
    var btnBon: UIButton!
    var btnNam: UIButton!
    var btnSau: UIButton!
    var btnBay: UIButton!
    var btnTam: UIButton!
    var btnChin: UIButton!
    var btnPhantram: UIButton!
    var btnCongTru: UIButton!
    var btnAC: UIButton!
    let lblKetqua: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Arial", size: 60)
        label.textAlignment = NSTextAlignment.right
        label.backgroundColor = #colorLiteral(red: 0.5568261743, green: 0.5568911433, blue: 0.5567888021, alpha: 1)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = "0"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnBang = initButton(title: "=", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), background: #colorLiteral(red: 0.9550090432, green: 0.5656004548, blue: 0.3228642046, alpha: 1))
        btnCong = initButton(title: "+", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), background: #colorLiteral(red: 0.9550090432, green: 0.5656004548, blue: 0.3228642046, alpha: 1))
        btnTru = initButton(title: "-", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), background: #colorLiteral(red: 0.9550090432, green: 0.5656004548, blue: 0.3228642046, alpha: 1))
        btnNhan = initButton(title: "X", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), background: #colorLiteral(red: 0.9550090432, green: 0.5656004548, blue: 0.3228642046, alpha: 1))
        btnChia = initButton(title: "/", color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), background: #colorLiteral(red: 0.9550090432, green: 0.5656004548, blue: 0.3228642046, alpha: 1))
        
        btnCham = initButton(title: ".", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        btnKhong = initButton(title: "0", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        btnMot = initButton(title: "1", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        btnHai = initButton(title: "2", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        btnBa = initButton(title: "3", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        btnBon = initButton(title: "4", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        btnNam = initButton(title: "5", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        btnSau = initButton(title: "6", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        btnBay = initButton(title: "7", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        btnTam = initButton(title: "8", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        btnChin = initButton(title: "9", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        
        btnPhantram = initButton(title: "%", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        btnCongTru = initButton(title: "+/_", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        btnAC = initButton(title: "AC", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), background: #colorLiteral(red: 0.8783757091, green: 0.878474772, blue: 0.8783185482, alpha: 1))
        
        addComponents()
        configButton()
    }
    
    // Methods
    func addComponents() {
        view.addSubview(btnBang)
        view.addSubview(btnCong)
        view.addSubview(btnTru)
        view.addSubview(btnNhan)
        view.addSubview(btnChia)
        view.addSubview(btnCham)
        view.addSubview(btnKhong)
        view.addSubview(btnMot)
        view.addSubview(btnHai)
        view.addSubview(btnBa)
        view.addSubview(btnBon)
        view.addSubview(btnNam)
        view.addSubview(btnSau)
        view.addSubview(btnBay)
        view.addSubview(btnTam)
        view.addSubview(btnChin)
        view.addSubview(btnPhantram)
        view.addSubview(btnCongTru)
        view.addSubview(btnAC)
        view.addSubview(lblKetqua)
    }
    
    func configButton() {
        autolayout(current: btnBang!, target: self.view!, right: .trailing, bottom: .bottom, width: 1/4, height: 1/6)
        autolayout(current: btnCham!, target: btnBang!, right: .leading, bottom: .bottom, width: 1, height: 1)
        autolayout(current: btnKhong!, target: btnCham!, right: .leading, bottom: .bottom, width: 2, height: 1)
        autolayout(current: btnCong!, target: btnBang!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: btnTru!, target: btnCong!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: btnNhan!, target: btnTru!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: btnChia!, target: btnNhan!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: btnBa!, target: btnCham!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: btnSau!, target: btnBa!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: btnChin!, target: btnSau!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: btnPhantram!, target: btnChin!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: btnHai!, target: btnKhong!, right: .trailing, bottom: .top, width: 1/2, height: 1)
        autolayout(current: btnNam!, target: btnHai!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: btnTam!, target: btnNam!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: btnCongTru!, target: btnTam!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: btnMot!, target: btnHai!, right: .leading, bottom: .bottom, width: 1, height: 1)
        autolayout(current: btnBon!, target: btnMot!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: btnBay!, target: btnBon!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: btnAC!, target: btnBay!, right: .trailing, bottom: .top, width: 1, height: 1)
        autolayout(current: lblKetqua, target: btnChia!, right: .trailing, bottom: .top, width: 4, height: 1)
    }
    
    func autolayout(current: Any, target: Any, right: NSLayoutConstraint.Attribute, bottom: NSLayoutConstraint.Attribute, width: CGFloat, height: CGFloat) {
        
        let trailing = NSLayoutConstraint(item: current, attribute: .trailing, relatedBy: .equal, toItem: target, attribute: right, multiplier: 1, constant: 0)
        let bottom = NSLayoutConstraint(item: current, attribute: .bottom, relatedBy: .equal, toItem: target, attribute: bottom, multiplier: 1, constant: 0)
        let width = NSLayoutConstraint(item: current, attribute: .width, relatedBy: .equal, toItem: target, attribute: .width, multiplier: width, constant: 0)
        let height = NSLayoutConstraint(item: current, attribute: .height, relatedBy: .equal, toItem: target, attribute: .height, multiplier: height, constant: 0)
        self.view.addConstraints([trailing, bottom, width, height])
        
    }
    
    func initButton(title: String, color: UIColor, background: UIColor) -> UIButton {
        let button = UIButton()
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.5764329433, green: 0.5764999986, blue: 0.5763943195, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont(name: "Arial", size: 35)
        button.setTitle(title, for: .normal)
        button.backgroundColor = background
        button.setTitleColor(color, for: .normal)
        return button
    }
}

