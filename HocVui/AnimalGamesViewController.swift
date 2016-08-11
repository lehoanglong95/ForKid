//
//  AnimalGamesViewController.swift
//  HocVui
//
//  Created by lehoanglong on 3/31/16.
//  Copyright © 2016 LeHoangLong. All rights reserved.
//

import UIKit
import AVFoundation

class AnimalGamesViewController: UIViewController {
    
    var avplayer = AVAudioPlayer()
    
    var showNameArray = []
    var showImageArray = []
    var rdImageNumber:Int = 0
    var rdSmallNumber:Int = 0
    var previousNumber:Int = 0

    @IBOutlet var checkImage: UIImageView!
    @IBOutlet var bigImage: UIImageView!
    @IBOutlet var smallImageView1: UIImageView!
    @IBOutlet var smallImageView2: UIImageView!
    @IBOutlet var smallImageView3: UIImageView!
    @IBOutlet var smallImage1: UIButton!
    @IBOutlet var smallImage2: UIButton!
    @IBOutlet var smallImage3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        checkImage.image = UIImage()
        
        let count = UInt32(showImageArray.count)
        
        rdImageNumber = Int(arc4random() % count)
        
        bigImage.image = UIImage(named: showImageArray[rdImageNumber] as! String)
        
        rdSmallNumber = Int(arc4random() % 3)
        
        if(smallImage1.tag == rdSmallNumber) {
            
//            smallImage1.setImage(UIImage(named: showImageArray[rdImageNumber] as! String), forState: .Normal)
//            smallImage2.setImage(UIImage(named: showImageArray[randomNumber()] as! String), forState: .Normal)
//            smallImage3.setImage(UIImage(named: showImageArray[randomNumber2()] as! String), forState: .Normal)
            smallImageView1.image = UIImage(named: showImageArray[rdImageNumber] as! String)
            smallImageView2.image = UIImage(named: showImageArray[randomNumber()] as! String)
            smallImageView3.image = UIImage(named: showImageArray[randomNumber2()] as! String)

            

        }
        
        if(smallImage2.tag == rdSmallNumber) {
            
//            smallImage2.setImage(UIImage(named: showImageArray[rdImageNumber] as! String), forState: .Normal)
//            smallImage1.setImage(UIImage(named: showImageArray[randomNumber()] as! String), forState: .Normal)
//            smallImage3.setImage(UIImage(named: showImageArray[randomNumber2()] as! String), forState: .Normal)
            smallImageView2.image = UIImage(named: showImageArray[rdImageNumber] as! String)
            smallImageView1.image = UIImage(named: showImageArray[randomNumber()] as! String)
            smallImageView3.image = UIImage(named: showImageArray[randomNumber2()] as! String)

            
        }

        if(smallImage3.tag == rdSmallNumber) {
            
//            smallImage3.setImage(UIImage(named: showImageArray[rdImageNumber] as! String), forState: .Normal)
//            smallImage2.setImage(UIImage(named: showImageArray[randomNumber()] as! String), forState: .Normal)
//            smallImage1.setImage(UIImage(named: showImageArray[randomNumber2()] as! String), forState: .Normal)
            smallImageView3.image = UIImage(named: showImageArray[rdImageNumber] as! String)
            smallImageView2.image = UIImage(named: showImageArray[randomNumber()] as! String)
            smallImageView1.image = UIImage(named: showImageArray[randomNumber2()] as! String)

            
        }

    }
    
    func randomNumber() -> Int {
        let count = UInt32(showImageArray.count)
        var randomNumber = Int(arc4random_uniform(count))
        while self.rdImageNumber == randomNumber {
            randomNumber = Int(arc4random_uniform(count))
        }
        previousNumber = randomNumber
        return randomNumber
    }
    
    func randomNumber2() -> Int {
        let count = UInt32(showImageArray.count)
        var randomNumber2 = Int(arc4random_uniform(count))
        while (self.rdImageNumber == randomNumber2 || self.previousNumber == randomNumber2) {
            
            randomNumber2 = Int(arc4random_uniform(count))
        
        }
        previousNumber = randomNumber2
        return randomNumber2
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func imageDidTouch(sender: AnyObject) {
        
        if (sender.tag == rdSmallNumber) {
            
            checkImage.image = UIImage(named: "check_ok")
            do {
                
                try avplayer = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("success", ofType: "mp3")!))
                avplayer.play()
            } catch {
                
            }
        

        } else {
            
            checkImage.image = UIImage(named: "check_false")
            do {
                
                try avplayer = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("lose", ofType: "mp3")!))
                avplayer.play()
            } catch {
                
            }

        }
    }
    
    @IBAction func nextButton(sender: AnyObject) {
        
        viewDidLoad()
    }
    
    
    @IBAction func backCollectionView(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
