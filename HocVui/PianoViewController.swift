//
//  PianoViewController.swift
//  HocVui
//
//  Created by lehoanglong on 4/2/16.
//  Copyright © 2016 LeHoangLong. All rights reserved.
//

import UIKit
import AVFoundation

class PianoViewController: UIViewController {
    var avPlayer = AVAudioPlayer()
    
    var musicArray = ["doo","re","mi","fa","sol","la","si","dooo"]
    
    var songArray = ["alibaba","haibantay","conhuoucaoco","ruamatnhumeo","chu_ech_con"]
    var songName = ["Alibaba","Hai Bàn Tay","Con Hươu Cao Cổ","Rửa Mặt Như Mèo","Chú Ếch Con"]
    
    @IBOutlet var viewShowPlayMusic: UIView!
    @IBOutlet var songPlayIs: UILabel!
    
    @IBAction func icPlayMusic(sender: AnyObject) {
        
            
            do {
                try avPlayer = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(musicArray[sender.tag], ofType: "wav")!))
                avPlayer.play()
            } catch {
                
            }
        

    }
    
    @IBAction func playSong(sender: AnyObject) {
        
        do {
            try avPlayer = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(songArray[sender.tag], ofType: "mp3")!))
            avPlayer.play()
        } catch {
            
        }
        
        viewShowPlayMusic.hidden = false
        songPlayIs.text = "Đang chơi bài hát \(songName[sender.tag])" as String
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewShowPlayMusic.hidden = true
        
        UIDevice.currentDevice().setValue(UIInterfaceOrientation.Portrait.rawValue, forKey: "orientation")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

    @IBAction func backToViewController(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    @IBAction func stopMusic(sender: AnyObject) {
        
        avPlayer.stop()
        
//        UIView.animateWithDuration(2.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
//            self.viewShowPlayMusic.alpha = 0.0
//            }, completion: {
//                (finished: Bool) -> Void in
        
                self.viewShowPlayMusic.hidden = true
                
                //Once the label is completely invisible, set the text and fade it back in
                
                // Fade in
                //                UIView.animateWithDuration(1.0, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
                //                    self.birdTypeLabel.alpha = 1.0
                //                    }, completion: nil)
        //})

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
