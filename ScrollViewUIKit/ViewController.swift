//
//  ViewController.swift
//  ScrollViewUIKit
//
//  Created by DA MAC M1 157 on 2023/07/10.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var myScrollView: UIScrollView!
    
    var coolScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureScrollView()
    }
    
    private func configureScrollView() {
        
        let x_point: CGFloat = 0
        let y_point: CGFloat  = 0
        let width = self.view.frame.size.width
        let height: CGFloat = 217
        let pages: CGFloat = 2
        
        
        coolScrollView = UIScrollView()
        coolScrollView.frame = CGRect(x: x_point, y: y_point, width: width, height: height)
        coolScrollView.backgroundColor = UIColor.systemGray5
        coolScrollView.contentOffset = CGPoint(x: 0, y: 0)
        coolScrollView.contentSize = CGSize(width: width * pages, height: height)
        coolScrollView.delegate = self
        coolScrollView.contentInset = UIEdgeInsets.zero
        coolScrollView.isDirectionalLockEnabled = false
        coolScrollView.bounces = true
        coolScrollView.isPagingEnabled = true
        coolScrollView.isScrollEnabled = true
        coolScrollView.showsHorizontalScrollIndicator = true
        coolScrollView.showsVerticalScrollIndicator = false
        coolScrollView.scrollIndicatorInsets = UIEdgeInsets.zero
        coolScrollView.indicatorStyle = .black
        //coolScrollView.decelerationRate = 1000
        coolScrollView.flashScrollIndicators()
        //coolScrollView.delaysContentTouches = true
        coolScrollView.minimumZoomScale = 1
        
        coolScrollView.maximumZoomScale = 10
        coolScrollView.bouncesZoom = true
        coolScrollView.scrollsToTop = true
        coolScrollView.keyboardDismissMode = UIScrollView.KeyboardDismissMode.none

        
        self.view.addSubview(coolScrollView)
        
        //Obj of scrollView
        
        let objectOne = UIView()
        objectOne.frame = CGRect(x: 20, y: (height/2)-25, width: 50, height: 50)
        objectOne.backgroundColor = UIColor.yellow
        coolScrollView.addSubview(objectOne)
        
        let objectTwo = UIView()
        objectTwo.frame = CGRect(x: coolScrollView.contentSize.width-20-50, y: (height/2)-25, width: 50, height: 50)
        objectTwo.backgroundColor = UIColor.red
        coolScrollView.addSubview(objectTwo)
    }
    
    // exec when scrolled
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("DiD Scroll")
    }


    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        print("Did Zoom")
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("Begin Dragging")
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print("Will end dragging")
    }
    
    
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        print("Will begin Decelerating")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("Did end Decelerating")
    }
    
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        print("Ended Scrolling Animation")
    }
}

