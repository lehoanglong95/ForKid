//
//  ViewController.swift
//  HocVui
//
//  Created by lehoanglong on 3/29/16.
//  Copyright © 2016 LeHoangLong. All rights reserved.
//

import UIKit

//var collectionViewIs : Int = 0 //1:Animal,2:Fruit

class ViewController: UIViewController {

    @IBOutlet var pianoButton: UIButton!
    @IBOutlet var animalButton: UIButton!
    @IBOutlet var imageButton: UIButton!
    @IBOutlet var colorButton: UIButton!
    @IBOutlet var fruitsButton: UIButton!
    @IBOutlet var thingsButton: UIButton!
    
    @IBAction func showPianovViewController(sender: AnyObject) {
        
        let pianoviewcontroller = self.storyboard!.instantiateViewControllerWithIdentifier("pianoviewcontroller") as! PianoViewController
        
        self.presentViewController(pianoviewcontroller, animated: true, completion: nil)
        
        
    }
    
    @IBAction func showCollectionViewController(sender: AnyObject) {
        
//        if sender.tag == 1 {
//        
//        collectionViewIs = 1
//            
//        } else if (sender.tag == 2) {
//            
//            collectionViewIs = 2
//            
//        } else if (sender.tag == 3) {
//            
//            collectionViewIs = 3
//        
//        } else if (sender.tag == 4) {
//            
//            collectionViewIs = 4
//        
//        } else {
//            
//            collectionViewIs = 5
//        
//        }
////        
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//
//        let vc: AnimalViewController = storyboard.instantiateViewControllerWithIdentifier("collectionviewcontroller") as! AnimalViewController
//        
//        self.presentViewController(vc, animated: true, completion: nil)
        
        let collectionviewcontroller = self.storyboard!.instantiateViewControllerWithIdentifier("collectionviewcontroller") as! AnimalViewController
        
        collectionviewcontroller.collectionViewIs = sender.tag
        
//        self.navigationController!.pushViewController(collectionviewcontroller, animated: true)
        
        self.presentViewController(collectionviewcontroller, animated:true, completion:nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUserInterface() {
        
        self.pianoButton.layer.cornerRadius = CGRectGetWidth(self.pianoButton.frame)/2.0
        
        self.animalButton.layer.cornerRadius = CGRectGetWidth(self.animalButton.frame)/2.0

        self.imageButton.layer.cornerRadius = CGRectGetWidth(self.imageButton.frame)/2.0

        self.colorButton.layer.cornerRadius = CGRectGetWidth(self.colorButton.frame)/2.0

        self.fruitsButton.layer.cornerRadius = CGRectGetWidth(self.fruitsButton.frame)/2.0

        self.thingsButton.layer.cornerRadius = CGRectGetWidth(self.thingsButton.frame)/2.0

   
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        <#code#>
//    }


}

