//
//  ViewController.swift
//  UIPageViewTestProject
//
//  Created by Md Sazzad Islam on 1/12/17.
//  Copyright © 2017 lynas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var imageName : String? = ""
	@IBOutlet weak var imgView: UIImageView?

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = UIColor.white
		imgView?.image = UIImage(named: imageName!)
	}
}

