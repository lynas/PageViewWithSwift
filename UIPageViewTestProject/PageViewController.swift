//
//  PageViewController.swift
//  UIPageViewTestProject
//
//  Created by Md Sazzad Islam on 1/12/17.
//  Copyright © 2017 lynas. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
	
	let imageNames = ["dog0","dog1","dog2","dog3"]
	var imgPos = 0
	
    override func viewDidLoad() {
        super.viewDidLoad()
		imgPos = 0
		self.dataSource = self
		let eachView = self.storyboard?.instantiateViewController(withIdentifier: "imageScroller") as! ViewController
		eachView.imageName = imageNames[imgPos]
		let viewControllers = [eachView]
		setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
    }
	
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
		if imgPos == (imageNames.count - 1) {
			return nil
		}
		let eachView = self.storyboard?.instantiateViewController(withIdentifier: "imageScroller") as! ViewController
		imgPos = imgPos + 1
		eachView.imageName = imageNames[imgPos]
		return eachView
	}
	
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
		if imgPos == 0 {
			return nil
		}
		let eachView = self.storyboard?.instantiateViewController(withIdentifier: "imageScroller") as! ViewController
		imgPos = imgPos - 1
		eachView.imageName = imageNames[imgPos]
		return eachView
	}


}
