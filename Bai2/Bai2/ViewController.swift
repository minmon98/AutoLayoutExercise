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
    @IBOutlet weak var btnBang: UIButton!
    @IBOutlet weak var btnCham: UIButton!
    @IBOutlet weak var btnKhong: UIButton!
    @IBOutlet weak var btnCong: UIButton!
    @IBOutlet weak var btnBa: UIButton!
    @IBOutlet weak var btnHai: UIButton!
    @IBOutlet weak var btnMot: UIButton!
    @IBOutlet weak var btnTru: UIButton!
    @IBOutlet weak var btnSau: UIButton!
    @IBOutlet weak var btnNam: UIButton!
    @IBOutlet weak var btnBon: UIButton!
    @IBOutlet weak var btnNhan: UIButton!
    @IBOutlet weak var btnChin: UIButton!
    @IBOutlet weak var btnTam: UIButton!
    @IBOutlet weak var btnBay: UIButton!
    @IBOutlet weak var btnChia: UIButton!
    @IBOutlet weak var btnPhantram: UIButton!
    @IBOutlet weak var btnCongTru: UIButton!
    @IBOutlet weak var btnAC: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configButton(button: btnBang)
        configButton(button: btnCham)
        configButton(button: btnKhong)
        configButton(button: btnCong)
        configButton(button: btnBa)
        configButton(button: btnHai)
        configButton(button: btnMot)
        configButton(button: btnTru)
        configButton(button: btnSau)
        configButton(button: btnNam)
        configButton(button: btnBon)
        configButton(button: btnNhan)
        configButton(button: btnChin)
        configButton(button: btnTam)
        configButton(button: btnBay)
        configButton(button: btnChia)
        configButton(button: btnPhantram)
        configButton(button: btnCongTru)
        configButton(button: btnAC)
    }

    // Methods
    func configButton(button: UIButton) {
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.5725116134, green: 0.5725782514, blue: 0.572473228, alpha: 1)
    }
    
    
}

