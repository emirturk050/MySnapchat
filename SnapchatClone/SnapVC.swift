//
//  SnapVC.swift
//  SnapchatClone
//
//  Created by Emir Türk on 28.03.2023.
//

import UIKit
import ImageSlideshow
import SDWebImage
class SnapVC: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var selectedSnap : SnapStruct!
   // var selectedTime : Int?
    var inputArray = [SDWebImageSource]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        if let snap = selectedSnap {
            timeLabel.text = "Time Left: \(snap.timeDifference)"
            for imageUrl in snap.imageUrlArray{
                inputArray.append(SDWebImageSource(urlString: imageUrl)!)
            }
            
            
            
            
        }
        
        let imageSlideShow = ImageSlideshow(frame: CGRect(x: 10 , y: -100, width: self.view.frame.width * 0.95, height: self.view.frame.height * 0.95))
        imageSlideShow.backgroundColor = UIColor.white
        
        let pageIndicator = UIPageControl()
        pageIndicator.currentPageIndicatorTintColor = UIColor.black
        pageIndicator.pageIndicatorTintColor = UIColor.lightGray
        imageSlideShow.pageIndicator = pageIndicator
        
        imageSlideShow.contentScaleMode = UIViewContentMode.scaleAspectFit
        imageSlideShow.setImageInputs(inputArray)
        self.view.addSubview(imageSlideShow)
        self.view.bringSubviewToFront(timeLabel)
        
        
    }
    
   

    

}
