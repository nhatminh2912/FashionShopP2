//
//  ViewScroll.swift
//  ScrollView
//
//  Created by Nhật Minh on 1/10/17.
//  Copyright © 2017 Nhật Minh. All rights reserved.
//

import UIKit

class ViewScroll: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    var photo = UIImageView()
    var pageImages: [String] = []
    var first = false
    override func viewDidLoad() {
        super.viewDidLoad()
        pageImages = ["meo1", "meo2", "meo3"]
        pageController.currentPage = 0
        pageController.numberOfPages = pageImages.count
    }
    
    override func viewDidLayoutSubviews() {
        if !first
        {
            first = true
            let pagesScrollViewSize = scrollView.frame.size
            scrollView.contentSize = CGSize(width: pagesScrollViewSize.width * CGFloat(pageImages.count), height: 0)
            for i in 0..<pageImages.count
            {
                let imgView = UIImageView(image: UIImage(named:pageImages[i]+".jpg"))
                imgView.frame = CGRect(x: CGFloat(i) * scrollView.frame.size.width, y: 0, width: scrollView.frame.size.width, height: scrollView.frame.size.height)
                self.scrollView.addSubview(imgView)
            }
        }
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView)
    {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageController.currentPage = Int(pageNumber)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
