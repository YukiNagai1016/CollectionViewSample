//
//  DetailViewController.swift
//  CollectionViewSample
//
//  Created by Yuki Nagai on 2018/02/24.
//  Copyright © 2018年 YukiNagai. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var detailImageView: UIImageView!
    var imageName = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        detailImageView.image = UIImage(named: imageName)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
