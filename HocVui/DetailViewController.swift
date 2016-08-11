//
//  DetailViewController.swift
//  HocVui
//
//  Created by lehoanglong on 3/30/16.
//  Copyright © 2016 LeHoangLong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {

//    var showImageName: String = ""
//    var showName:String = ""
    var showNameArray = []
    var showImageArray = []
    var idPathIs : Int = 0
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.scrollToItemAtIndexPath(NSIndexPath(forItem: idPathIs, inSection: 0), atScrollPosition: UICollectionViewScrollPosition.CenteredHorizontally, animated: false)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
        
        
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return showImageArray.count
        
    }
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {

        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
//        
//        self.collectionView.scrollToItemAtIndexPath(<#T##indexPath: NSIndexPath##NSIndexPath#>, atScrollPosition: <#T##UICollectionViewScrollPosition#>, animated: <#T##Bool#>)
        
        //self.collectionView.registerNib(UINib(nibName: "DetailCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "detailcollectionviewcell")
        
        
        
        let cell: DetailCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("detailcollectionviewcell", forIndexPath: indexPath) as! DetailCollectionViewCell
        let image: UIImageView = cell.viewWithTag(1) as! UIImageView
        image.image = UIImage(named: self.showImageArray[indexPath.row] as! String)
        let lblName: UILabel = cell.viewWithTag(2) as! UILabel
        lblName.text = self.showNameArray[indexPath.row] as? String
        
        
//        cell.Name.text = self.showNameArray[indexPath.row] as? String
//        cell.Image.image = UIImage(named: self.showImageArray[indexPath.row] as! String)
        
        
        //        let collectionViewWidth = self.collectionView.bounds.size.width
        //        cell.frame.size.width = (self.collectionView.bounds.size.width - 30)/2
        //        cell.frame.size.height = cell.frame.size.width
        
        return cell
        
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
