//
//  CircleViewController.swift
//  ProjectBaocao
//
//  Created by Le Tan Tien on 3/21/18.
//  Copyright © 2018 HanhvanTran. All rights reserved.
//
import UIKit

extension UIColor {
    static func color(_ red: Int, green: Int, blue: Int, alpha: Float) -> UIColor {
        return UIColor(
            red: 1.0 / 255.0 * CGFloat(red),
            green: 1.0 / 255.0 * CGFloat(green),
            blue: 1.0 / 255.0 * CGFloat(blue),
            alpha: CGFloat(alpha))
    }
}

class CircleViewController: UIViewController, CircleMenuDelegate {
    
    //    let colors = [UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.purpleColor()]
    let items: [(icon: String, color: UIColor)] = [
        ("icon_home", UIColor(red: 0.19, green: 0.57, blue: 1, alpha: 1)),
        ("icon_search", UIColor(red: 0.22, green: 0.74, blue: 0, alpha: 1)),
        ("notifications-btn", UIColor(red: 0.96, green: 0.23, blue: 0.21, alpha: 1)),
        ("settings-btn", UIColor(red: 0.51, green: 0.15, blue: 1, alpha: 1)),
        ("nearby-btn", UIColor(red: 1, green: 0.39, blue: 0, alpha: 1)),
        ("icon_home", UIColor(red: 0.19, green: 0.57, blue: 1, alpha: 1)),
        ("icon_search", UIColor(red: 0.22, green: 0.74, blue: 0, alpha: 1)),
        ("notifications-btn", UIColor(red: 0.96, green: 0.23, blue: 0.21, alpha: 1)),
        ("settings-btn", UIColor(red: 0.51, green: 0.15, blue: 1, alpha: 1)),
        ("nearby-btn", UIColor(red: 1, green: 0.39, blue: 0, alpha: 1))
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // add button
//                let button = CircleMenu(
//                    frame: CGRect(x: 200, y: 200, width: 50, height: 50),
//                    normalIcon:"icon_menu",
//                    selectedIcon:"icon_close",
//                    buttonsCount: 10,
//                    duration: 0,
//                    distance: 120)
//        button.backgroundColor = UIColor.lightGray
//                button.delegate = self
//                button.layer.cornerRadius = button.frame.size.width / 2.0
//                view.addSubview(button)
        
//        let button = CircleMenu(
//            frame: CGRect(x: 150, y: 300, width: 80, height: 80),
//            normalIcon:"icon_menu",
//            selectedIcon:"icon_close",
//            buttonsCount: 10,
//            duration: 4,
//            distance: 180)
//        button.backgroundColor = UIColor.lightGray
//        
//       // button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
//      //  button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive=true
//      //  button.widthAnchor.constraint(equalToConstant: 80).isActive=true
//      //  button.heightAnchor.constraint(equalToConstant: 80).isActive=true
//        button.delegate = self
//        button.layer.cornerRadius = button.frame.size.width / 2.0
//        view.addSubview(button)
    }
    
    // MARK: <CircleMenuDelegate>
    
    func circleMenu(_: CircleMenu, willDisplay button: UIButton, atIndex: Int) {
        button.backgroundColor = items[atIndex].color
        
        button.setImage(UIImage(named: items[atIndex].icon), for: .normal)
        
        // set highlited image
        let highlightedImage = UIImage(named: items[atIndex].icon)?.withRenderingMode(.alwaysTemplate)
        button.setImage(highlightedImage, for: .highlighted)
        button.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
    }
    
    func circleMenu(_: CircleMenu, buttonWillSelected _: UIButton, atIndex: Int) {
        print("button will selected: \(atIndex)")
    }
    
    func circleMenu(_: CircleMenu, buttonDidSelected _: UIButton, atIndex: Int) {
        print("button did selected: \(atIndex)")
    }
}


