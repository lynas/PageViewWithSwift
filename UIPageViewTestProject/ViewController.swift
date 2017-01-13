//
//  ViewController.swift
//  UIPageViewTestProject
//
//  Created by Md Sazzad Islam on 1/12/17.
//  Copyright © 2017 lynas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	/*var imageName : String? {
		didSet {
			imgView.image = UIImage(named: imageName!)
		}
	}*/
	@IBOutlet weak var imgView: UIImageView!

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = UIColor.white

		let usersStoredInfo = UserDefaults.standard
		let imgName = usersStoredInfo.object(forKey: "nameImg") as? String ?? ""
		imgView.image = UIImage(named: imgName)
	}
}

