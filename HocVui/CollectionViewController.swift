//
//  AnimalViewController.swift
//  HocVui
//
//  Created by lehoanglong on 3/29/16.
//  Copyright © 2016 LeHoangLong. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    
    var collectionViewIs : Int = 0 //1:Animal,2:Fruit,3:Image,4:Things,5:Color
    
//    var showImageName: String = ""
//    var showName:String = ""
    var showNameArray = [String]()
    var showImageArray = [String]()
    
    @IBOutlet var collectionView: UICollectionView!
    
    var animalImageName: [String] = ["bachtuoc","bosua","caheo","camap","casau","cavoi","chimcanhcut","chuot","conchimcu","concho","conchon","conco","concuu","condoi","conga","congau","conho","conkhi","conlon","conmeo","conran","consoc","consutu","contho","convoi","cua","ech","gautruc","haicau","hama","huoucaoco","lacda","muc","ngua","nguavan","ocsen","rua","vitcon"]

    var animalName: [String] = ["Bạch Tuộc","Bò Sữa","Cá Heo","Cá Mập","Cá Sấu","Cá Voi","Chim Cánh Cụt","Chuột","Con Chim Cú","Con Chó","Con Chồn","Con Cò","Con Cừu","Con Dơi","Con Gà","Con Gấu","Con Hổ","Con Khỉ","Con Lợn","Con Mèo","Con Rắn","Con Sóc","Con Sư Tử","Con Thỏ","Con Voi","Cua","Ếch","Gấu Trúc","Hải Cẩu","Hà Mã","Hươu Cao Cổ","Lạc Đà","Mực","Ngựa","Ngựa Vằn","Ốc Sên","Rùa","Vịt Con"]
    
    var fruitImageName: [String] = ["duahau","dudu","quabo","quacam","quachanh","quachuoi","quadao","quadua","quaduongdao","quale","quamangcut","quanho","quatao","quathanhlong","saurieng"]
    
    var fruitName: [String] = ["Dưa Hấu","Đu Đủ","Quả Bơ","Quả Cam","Quả Chanh","Quả Chuối","Quả Đào","Quả Dưa","Quả Dương Đào","Quả Lê","Quả Măng Cụt","Chùm Nho","Quả Táo","Quả Thanh Long","Quả Sầu Riêng"]
    
    var imageImageName: [String] = ["hinh_vuong","hinh_tron","hinh_tamgiac","hinh_chunhat","hinh_bauduc","hinh_thoi","hinh_ngugiac","hinh_lucgiac"]
    
    var imageName :[String] = ["Hình Vuông","Hình Tròn","Hình Tam Giác","Hình Chữ Nhật","Hình Bầu Dục","Hình Thoi","Hình Ngũ Giác","Hình Lục Giác"]
    
    var thingsImageName:[String] = ["amnuoc","balo","bangden","banhoc","butchi","butmau","caichao","caitrong","condao","conquay","cuctay","donghobaothuc","gotbutchi","maybaytructhang","maychupanh","nguoituyet","oto","quabongda","quadiacau","quyensach","quyenvo","sieunuoc","tauthuy","thuocke","tuquanao","xecancau","xedap","xemay","xetai"]
    
    var thingsName:[String] = ["Ấm Nước","Cái Ba Lô","Bảng Đen","Bàn Học","Bút Chì","Bút Màu","Cái Chảo","Dùi và Trống","Con Dao","Con Quay","Cục Tẩy","Đồng Hồ Báo Thức","Cái Gọt Bút Chì","Máy Bay Trực Thăng","Máy Chụp Ảnh","Người Tuyết","Ôtô","Quả Bóng Đá","Quả Địa Cầu","Quyển Sách","Quyển Vở","Cái Siêu Đun Nước","Tàu Thuỷ","Cái Thước Kẻ","Tủ Quần Áo","Xe Cần Cẩu","Xe Đạp","Xe Máy","Xe Tải"]
    
    var colorImageName:[String] = ["mau_vang","mau_do","mau_lam","mau_tim","mau_luc","mau_cam"]
    
    var colorName:[String] = ["Màu Vàng","Màu Đỏ","Màu Lam","Màu Tím","Màu Lục","Màu Cam"]
    
//    var dataTable = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
//    func getData() {
//        self.dataTable = [
//            ["name": "bach touch", "image": "urlimage"],
//            
//        
//        
//        
//        
//        
//        
//        ]
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func numberOfItemsInSection(section: Int) -> Int {
//        
//        return 
//    
//    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
        
        
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if (collectionViewIs == 1) {
        
        return animalImageName.count
        
        } else if (collectionViewIs == 2) {
            
            return fruitImageName.count
        
        } else if (collectionViewIs == 3) {
            
            return imageImageName.count

        } else if (collectionViewIs == 4){
            
            return thingsImageName.count
            
        } else {
            
            return colorImageName.count
        }
    }
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: (view.frame.width - 30)/2, height: (view.frame.width - 30)/2)
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        self.collectionView.registerNib(UINib(nibName: "UniversalCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "universalcollectionviewcell")
     
        let cell: UniversalCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("universalcollectionviewcell", forIndexPath: indexPath) as! UniversalCollectionViewCell
            
        if (collectionViewIs == 1) {
        
        cell.Name.text = animalName[indexPath.row]
        cell.Image.image = UIImage(named: animalImageName[indexPath.row])
        showNameArray = animalName
        showImageArray = animalImageName
            
        } else if (collectionViewIs == 2) {
            
        cell.Name.text = fruitName[indexPath.row]
        cell.Image.image = UIImage(named: fruitImageName[indexPath.row])
        showNameArray = fruitName
        showImageArray = fruitImageName

        } else if (collectionViewIs == 3) {
            
        cell.Name.text = imageName[indexPath.row]
        cell.Image.image = UIImage(named: imageImageName[indexPath.row])
        showNameArray = imageName
        showImageArray = imageImageName
            
        } else if (collectionViewIs == 4) {
    
        cell.Name.text = thingsName[indexPath.row]
        cell.Image.image = UIImage(named: thingsImageName[indexPath.row])
        showNameArray = thingsName
        showImageArray = thingsImageName
            
        } else if (collectionViewIs == 5) {
    
        cell.Name.text = colorName[indexPath.row]
        cell.Image.image = UIImage(named: colorImageName[indexPath.row])
        showNameArray = colorName
        showImageArray = colorImageName
            
        }
        
    
    
//        let collectionViewWidth = self.collectionView.bounds.size.width
//        cell.frame.size.width = (self.collectionView.bounds.size.width - 30)/2
//        cell.frame.size.height = cell.frame.size.width
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let detailviewcontroller = self.storyboard!.instantiateViewControllerWithIdentifier("detailviewcontroller") as! DetailViewController
        
//        detailviewcontroller.showImageName = self.showImageArray[indexPath.row] as! String
//        detailviewcontroller.showName = self.showNameArray[indexPath.row] as! String
        detailviewcontroller.showNameArray = self.showNameArray
        detailviewcontroller.showImageArray = self.showImageArray
        detailviewcontroller.idPathIs = indexPath.row
        
//        self.navigationController!.pushViewController(detailviewcontroller, animated: true)
        self.presentViewController(detailviewcontroller, animated:true, completion:nil)


    }

    @IBAction func goToPlayGames(sender: AnyObject) {
        
        if (collectionViewIs == 5) {
            
            let colorgamesviewcontroller = self.storyboard!.instantiateViewControllerWithIdentifier("colorgamesviewcontroller") as! ColorGamesViewController
            
            //        detailviewcontroller.showImageName = self.showImageArray[indexPath.row] as! String
            //        detailviewcontroller.showName = self.showNameArray[indexPath.row] as! String
//            colorgamesviewcontroller.showNameArray = self.showNameArray
//            colorgamesviewcontroller.showImageArray = self.showImageArray
            
//            self.navigationController!.pushViewController(colorgamesviewcontroller, animated: true)
            self.presentViewController(colorgamesviewcontroller, animated:true, completion:nil)
            
        } else if(collectionViewIs == 3) {
            
            let geometrygamesviewcontroller = self.storyboard!.instantiateViewControllerWithIdentifier("geometrygamesviewcontroller") as! GeometryGamesViewController
            
            //        detailviewcontroller.showImageName = self.showImageArray[indexPath.row] as! String
            //        detailviewcontroller.showName = self.showNameArray[indexPath.row] as! String
            //geometrygamesviewcontroller.showNameArray = self.showNameArray
            geometrygamesviewcontroller.showImageArray = self.showImageArray
            
//            self.navigationController!.pushViewController(geometrygamesviewcontroller, animated: true)
            self.presentViewController(geometrygamesviewcontroller, animated: true, completion: nil)
            
        } else {
        
        let animalgamesviewcontroller = self.storyboard!.instantiateViewControllerWithIdentifier("animalgamesviewcontroller") as! AnimalGamesViewController
        
        //        detailviewcontroller.showImageName = self.showImageArray[indexPath.row] as! String
        //        detailviewcontroller.showName = self.showNameArray[indexPath.row] as! String
        animalgamesviewcontroller.showNameArray = self.showNameArray
        animalgamesviewcontroller.showImageArray = self.showImageArray
        
        //self.navigationController!.pushViewController(animalgamesviewcontroller, animated: true)
        self.presentViewController(animalgamesviewcontroller, animated:true, completion:nil)

        
        }
        
    }
    
    @IBAction func backRootScreen(sender: AnyObject) {
        
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
