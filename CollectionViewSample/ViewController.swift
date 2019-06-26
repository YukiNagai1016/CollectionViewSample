//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by Yuki Nagai on 2018/02/24.
//  Copyright © 2018年 YukiNagai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var sampleCollectionView: UICollectionView!
    var sampleImageName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg", "12.jpg", "13.jpg", "14.jpg", "15.jpg", "16.jpeg", "17.jpg" ,"18.jpg" ,"19.jpg" ,"20.jpg" ,"21.jpg" ,"22.jpg" ,"23.png"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sampleCollectionView.delegate = self
        sampleCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //セルのか数を決める
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sampleImageName.count
    }

    //セルの中身を決める
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sampleCell", for: indexPath)
        let sampleImageView = cell.viewWithTag(7) as! UIImageView
        sampleImageView.image = UIImage(named: sampleImageName[indexPath.row])
        return cell
    }
    
    //セルが選択された時に何するかを決める
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetail", sender: nil)
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    //画面遷移時に何するかを決める
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! DetailViewController
        let selectedIndex = sampleCollectionView.indexPathsForSelectedItems![0]
        detailViewController.imageName = sampleImageName[selectedIndex.row]
    }
    
}

