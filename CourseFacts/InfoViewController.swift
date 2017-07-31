//
//  InfoViewController.swift
//  CourseFacts
//
//  Created by Hafeez Khan on 2017-07-27.
//  Copyright © 2017 Hafeez Khan. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    //var coolTitle: String = ""
    var science: Fact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoLabel.text = science?.myDescription ?? ""
        
        // Do any additional setup after loading the view.
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        descriptionLabel.text = coolTitle
//    }

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
