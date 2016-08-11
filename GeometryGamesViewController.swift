//
//  GeometryGamesViewController.swift
//  HocVui
//
//  Created by lehoanglong on 4/1/16.
//  Copyright © 2016 LeHoangLong. All rights reserved.
//

import UIKit

class GeometryGamesViewController: UIViewController {
    
    var showImageArray = [String]()
    var randomArray = [String]()
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    @IBOutlet var correctLbl: UILabel!
    @IBOutlet var noticeLbl: UILabel!
    
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    @IBOutlet var image3: UIImageView!
    @IBOutlet var image4: UIImageView!
    @IBOutlet var image5: UIImageView!
    @IBOutlet var image6: UIImageView!
    @IBOutlet var image7: UIImageView!
    @IBOutlet var image8: UIImageView!
    @IBOutlet var image9: UIImageView!
    
    var rdNumber : Int = 0
    
    var imageMoving : UIImageView?
    
    @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
        
        
        if recognizer.state == UIGestureRecognizerState.Began {
            
            imageMoving = UIImageView(frame: (recognizer.view?.frame)!)
            imageMoving!.image = (recognizer.view as! UIImageView).image
            view.addSubview(imageMoving!)
            
        } else if recognizer.state == UIGestureRecognizerState.Changed {
            
            
            let translation = recognizer.translationInView(self.view)
            imageMoving!.center = CGPoint(x:imageMoving!.center.x + translation.x,
                            y:imageMoving!.center.y + translation.y)
            
            recognizer.setTranslation(CGPointZero, inView: self.view)

            
        } else if recognizer.state == UIGestureRecognizerState.Ended {
            
            let distance = sqrt(pow((self.image5.center.x - imageMoving!.center.x), 2.0) + pow((self.image5.center.y - imageMoving!.center.y), 2.0))

            
            if (distance < self.view.frame.height/8) {
            
                if (recognizer.view?.tag == rdNumber) {
                    
                    imageMoving?.removeFromSuperview()
                    imageMoving = nil
                    correctLbl.hidden = false
                    correctLbl.alpha = 1
                    createNewScreen()
                } else {
                    
                    imageMoving?.removeFromSuperview()
                    imageMoving = nil
                }
            } else {
                
                imageMoving?.removeFromSuperview()
                imageMoving = nil
            }
                
                //            self.view.gestureRecognizers?.removeAll()
                //
                ////            recognizer.view?.center = CGPoint(x: positionx!, y: positiony!)
                ////            recognizer.setTranslation(CGPointZero, inView: self.view)
            
        }
        
//        let translation = recognizer.translationInView(self.view)
//        
//        print(image5.center.x)
//        print(image5.center.y)
//        
//        var positionx = recognizer.view?.center.x
//        var positiony = recognizer.view?.center.y
//        
//        
//        
//        if let view = recognizer.view {
//            
//            print (view.center.x)
//            print(view.center.y)
//            
//            view.center = CGPoint(x:view.center.x + translation.x,
//                y:view.center.y + translation.y)
//        }
        
//        recognizer.setTranslation(CGPointZero, inView: self.view)
//        //print (view.center.x)
//        //print(view.center.y)
//        
//        print(recognizer.view?.center.x)
//        print(recognizer.view?.center.y)
//        
//        let distance = sqrt(pow((self.image5.center.x - recognizer.view!.center.x), 2.0) + pow((self.image5.center.y - recognizer.view!.center.y), 2.0))
//        
//        print(distance)
//        
//        if (distance < self.view.frame.height/8) {
//            
//            self.view.gestureRecognizers?.removeAll()
//            
////            recognizer.view?.center = CGPoint(x: positionx!, y: positiony!)
////            recognizer.setTranslation(CGPointZero, inView: self.view)
//            
//            
//            viewDidLoad()
//        }
    }
    
    override func viewDidAppear(animated: Bool) {
        
        noticeLbl.hidden = false
        
        UIDevice.currentDevice().setValue(UIInterfaceOrientation.Portrait.rawValue, forKey: "orientation")
        
        UIView.animateWithDuration(2.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.noticeLbl.alpha = 0.0
            }, completion: {
                (finished: Bool) -> Void in
                
                self.noticeLbl.hidden = true
                
                //Once the label is completely invisible, set the text and fade it back in
                
                // Fade in
                //                UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
                //                    self.birdTypeLabel.alpha = 1.0
                //                    }, completion: nil)
        })

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctLbl.hidden = true
//
//        UIDevice.currentDevice().setValue(UIInterfaceOrientation.Portrait.rawValue, forKey: "orientation")
//        
//        UIView.animateWithDuration(2.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
//            self.noticeLbl.alpha = 0.0
//            }, completion: {
//                (finished: Bool) -> Void in
//                
//                self.noticeLbl.hidden = true
//                
//                //Once the label is completely invisible, set the text and fade it back in
//                
//                // Fade in
//                //                UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
//                //                    self.birdTypeLabel.alpha = 1.0
//                //                    }, completion: nil)
//        })

        
//        image1.frame = CGRect(x: 0, y: 72, width: 94, height: 94)
//        image2.frame = CGRect(x: 0, y: 174, width: 94, height: 94)
//        image3.frame = CGRect(x: 0, y: 276, width: 94, height: 94)
//        image4.frame = CGRect(x: 286, y: 72, width: 94, height: 94)
//        image5.frame = CGRect(x: 286, y: 174, width: 94, height: 94)
//        image6.frame = CGRect(x: 286, y: 276, width: 94, height: 94)
//        image7.frame = CGRect(x: 573, y: 72, width: 94, height: 94)
//        image8.frame = CGRect(x: 573, y: 174, width: 94, height: 94)
//        image9.frame = CGRect(x: 573, y: 276, width: 94, height: 94)
        
        let saveArray = showImageArray
        
        for (var i = 0;i < 8;i++) {
        
        let randomIndex = Int(arc4random_uniform(UInt32(showImageArray.count)))
        self.randomArray.append(self.showImageArray[randomIndex])
        showImageArray.removeAtIndex(randomIndex)
            
        }
        
        rdNumber = Int(arc4random_uniform(UInt32(randomArray.count)))
        image5.image = UIImage(named: randomArray[rdNumber])
        image5.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        image5.alpha = 0.4
        image5.tintColor = UIColor.brownColor()
        image1.image = UIImage(named: randomArray[0])
        image2.image = UIImage(named: randomArray[1])
        image3.image = UIImage(named: randomArray[2])
        image4.image = UIImage(named: randomArray[3])
        image6.image = UIImage(named: randomArray[4])
        image7.image = UIImage(named: randomArray[5])
        image8.image = UIImage(named: randomArray[6])
        image9.image = UIImage(named: randomArray[7])
        randomArray.removeAll()
        
        showImageArray = saveArray
        print(rdNumber)
        
    }
    
    func createNewScreen() {
        
        UIView.animateWithDuration(2.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.correctLbl.alpha = 0.0
            }, completion: {
                (finished: Bool) -> Void in
                
                self.correctLbl.hidden = true
                
                //Once the label is completely invisible, set the text and fade it back in
                
                // Fade in
//                UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
//                    self.birdTypeLabel.alpha = 1.0
//                    }, completion: nil)
        })
    
        let saveArray = showImageArray
        
        for (var i = 0;i < 8;i++) {
            
            let randomIndex = Int(arc4random_uniform(UInt32(showImageArray.count)))
            self.randomArray.append(self.showImageArray[randomIndex])
            showImageArray.removeAtIndex(randomIndex)
            
        }
        
        rdNumber = Int(arc4random_uniform(UInt32(randomArray.count)))
        image5.image = UIImage(named: randomArray[rdNumber])
        image5.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        image5.alpha = 0.4
        image5.tintColor = UIColor.brownColor()
        image1.image = UIImage(named: randomArray[0])
        image2.image = UIImage(named: randomArray[1])
        image3.image = UIImage(named: randomArray[2])
        image4.image = UIImage(named: randomArray[3])
        image6.image = UIImage(named: randomArray[4])
        image7.image = UIImage(named: randomArray[5])
        image8.image = UIImage(named: randomArray[6])
        image9.image = UIImage(named: randomArray[7])
        randomArray.removeAll()
        
        showImageArray = saveArray
        print(rdNumber)

        
        
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        
        super.viewWillDisappear(animated)
        
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Landscape
    }
    
    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
        
        // Only allow Portrait
        return UIInterfaceOrientation.LandscapeRight
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backToCollectionView(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
//    override func supportedInterfaceOrientations() -> Int {
//        return Int(UIInterfaceOrientationMask.Landscape.rawValue)
//    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
