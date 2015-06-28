//
//  ImageViewController.swift
//  Cassini
//
//  Created by liubin on 15/6/27.
//  Copyright (c) 2015年 liubin. All rights reserved.
//

import UIKit

class ImageViewController: ViewController, UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.addSubview(imageView)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if image == nil {
            fetchImage()
        }
    }
    
    private var imageView: UIImageView = UIImageView()
    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.contentSize = imageView.frame.size
            scrollView.maximumZoomScale = 2.0
            scrollView.minimumZoomScale = 0.3
            scrollView.delegate = self
        }
    }
    
    @IBOutlet weak var spining: UIActivityIndicatorView!
    
    var imageURL: NSURL? {
        didSet {
            image = nil
            if view.window != nil {
                fetchImage()
            }
        }
    }
    
    private func fetchImage() {
        if let url = imageURL {
            spining?.startAnimating()
            let qos = Int(QOS_CLASS_USER_INITIATED.value)
            dispatch_async(dispatch_get_global_queue(qos, 0)) {
                let imageData = NSData(contentsOfURL: url)
                println("imageData retrieve complete: \(imageData?.length)")
                dispatch_async(dispatch_get_main_queue()) {
                    if url == self.imageURL {
                        if let data = imageData {
                            self.spining?.stopAnimating()
                            self.image = UIImage(data: data)
                        } else {
                            self.image = nil
                        }
                    }
                }
            }
        }
    }
    
    private var image: UIImage? {
        set {
            imageView.image = newValue
            imageView.sizeToFit()
            scrollView?.contentSize = imageView.frame.size
            println("here, image: \(newValue?.size)")
        }
        
        get {
            return imageView.image
        }

    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    

}
