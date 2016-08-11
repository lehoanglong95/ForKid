//
//  ColorGamesViewController.swift
//  HocVui
//
//  Created by lehoanglong on 3/31/16.
//  Copyright © 2016 LeHoangLong. All rights reserved.
//

import UIKit

class ColorGamesViewController: UIViewController {
    
    var colorInEntityColor: Int = 1

    @IBOutlet var entityColor1: UIView!
    @IBOutlet var entityColor2: UIView!
    @IBOutlet var mixColor: UILabel!
    var redPercentage1 : CGFloat = 0
    var greenPercentage1: CGFloat = 0
    var bluePercentage1: CGFloat = 0
    var redPercentage2 : CGFloat = 0
    var greenPercentage2: CGFloat = 0
    var bluePercentage2: CGFloat = 0
    
    @IBAction func changeColor(sender: AnyObject) {
        
        if colorInEntityColor == 1 {
            
            if (sender.tag == 1) {
                
                entityColor1.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
                
                redPercentage1 = 1
                greenPercentage1 = 1
                bluePercentage1 = 0

            } else if (sender.tag == 2) {
                
                entityColor1.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
                
                redPercentage1 = 1
                greenPercentage1 = 0
                bluePercentage1 = 0


            } else if (sender.tag == 3) {
                
                entityColor1.backgroundColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
                
                redPercentage1 = 0
                greenPercentage1 = 0
                bluePercentage1 = 1


            } else if (sender.tag == 4) {
                
                entityColor1.backgroundColor = UIColor(red: 0.5, green: 0, blue: 0.5, alpha: 1)
                
                redPercentage1 = 0.5
                greenPercentage1 = 0
                bluePercentage1 = 0.5


            } else if (sender.tag == 5) {
                
                entityColor1.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
                
                redPercentage2 = 0
                greenPercentage2 = 0.77
                bluePercentage2 = 0.28


            } else if (sender.tag == 6) {
                
                entityColor1.backgroundColor = UIColor(red: 1, green: 0.5, blue: 0, alpha: 1)
                
                redPercentage1 = 1
                greenPercentage1 = 0.5
                bluePercentage1 = 0

            }

          colorInEntityColor = 2


        } else {
            
            if (sender.tag == 1) {
                
                entityColor2.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
                redPercentage2 = 1
                greenPercentage2 = 1
                bluePercentage2 = 0
                mixColor.backgroundColor = UIColor(red: (self.redPercentage1 + self.redPercentage2)/CGFloat(2), green: (self.greenPercentage1 + self.greenPercentage2)/CGFloat(2), blue: (self.bluePercentage1 + self.bluePercentage2)/CGFloat(2), alpha: 1)

            } else if (sender.tag == 2) {
                
                entityColor2.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
                redPercentage2 = 1
                greenPercentage2 = 0
                bluePercentage2 = 0
                mixColor.backgroundColor = UIColor(red: (self.redPercentage1 + self.redPercentage2)/CGFloat(2), green: (self.greenPercentage1 + self.greenPercentage2)/CGFloat(2), blue: (self.bluePercentage1 + self.bluePercentage2)/CGFloat(2), alpha: 1)
                
            } else if (sender.tag == 3) {
                
                entityColor2.backgroundColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
                redPercentage2 = 0
                greenPercentage2 = 0
                bluePercentage2 = 1
                mixColor.backgroundColor = UIColor(red: (self.redPercentage1 + self.redPercentage2)/CGFloat(2), green: (self.greenPercentage1 + self.greenPercentage2)/CGFloat(2), blue: (self.bluePercentage1 + self.bluePercentage2)/CGFloat(2), alpha: 1)
                
            } else if (sender.tag == 4) {
                
                entityColor2.backgroundColor = UIColor(red: 0.5, green: 0, blue: 0.5, alpha: 1)
                redPercentage2 = 0.5
                greenPercentage2 = 0
                bluePercentage2 = 0.5
                mixColor.backgroundColor = UIColor(red: (self.redPercentage1 + self.redPercentage2)/CGFloat(2), green: (self.greenPercentage1 + self.greenPercentage2)/CGFloat(2), blue: (self.bluePercentage1 + self.bluePercentage2)/CGFloat(2), alpha: 1)
                
            } else if (sender.tag == 5) {
                
                entityColor2.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
                redPercentage2 = 0
                greenPercentage2 = 1
                bluePercentage2 = 0
                mixColor.backgroundColor = UIColor(red: (self.redPercentage1 + self.redPercentage2)/CGFloat(2), green: (self.greenPercentage1 + self.greenPercentage2)/CGFloat(2), blue: (self.bluePercentage1 + self.bluePercentage2)/CGFloat(2), alpha: 1)
                
            } else if (sender.tag == 6) {
                
                entityColor2.backgroundColor = UIColor(red: 1, green: 0.5, blue: 0, alpha: 1)
                redPercentage2 = 1
                greenPercentage2 = 0.5
                bluePercentage2 = 0
                mixColor.backgroundColor = UIColor(red: (self.redPercentage1 + self.redPercentage2)/CGFloat(2), green: (self.greenPercentage1 + self.greenPercentage2)/CGFloat(2), blue: (self.bluePercentage1 + self.bluePercentage2)/CGFloat(2), alpha: 1)
                

            }
            
            colorInEntityColor = 1

        }
        
        
    }
    
    @IBAction func backToCollectionView(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func mix(color1: UIColor, color2: UIColor) -> UIColor {
//    
//    return blendColor(color1, withColor: color2)
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
