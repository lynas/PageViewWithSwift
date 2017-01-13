//
//  PageViewController.swift
//  UIPageViewTestProject
//
//  Created by Md Sazzad Islam on 1/12/17.
//  Copyright © 2017 lynas. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
	
	let imageNames = ["dog0","dog1","dog2"]
	let usersStoredInfo = UserDefaults.standard
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		self.dataSource = self
		let eachView = self.storyboard?.instantiateViewController(withIdentifier: "imageScroller") as! ViewController
		usersStoredInfo.set(imageNames.first, forKey: "nameImg")
		let viewControllers = [eachView]
		setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
    }
	
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
		let eachView = self.storyboard?.instantiateViewController(withIdentifier: "imageScroller") as! ViewController
		usersStoredInfo.set(imageNames.last, forKey: "nameImg")
		return eachView
	}
	
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
		let eachView = self.storyboard?.instantiateViewController(withIdentifier: "imageScroller") as! ViewController
		usersStoredInfo.set(imageNames.first, forKey: "nameImg")
		return eachView
	}


}
