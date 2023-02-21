//
//  ViewController.swift
//  ExploringFileManager
//
//  Created by 山下　航 on 2023/02/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fileManager = FileManager.default
        
        guard let documentDirectoryUrl = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else {
            return
        }
        
        let newFolderUrl = documentDirectoryUrl.appendingPathComponent("practice-filemanager")
        
        let fileUrl = newFolderUrl.appendingPathComponent("logs.txt")
        print(fileUrl)
        let data = "Hello World".data(using: .utf8)
        fileManager.createFile(atPath: fileUrl.path, contents: data, attributes: [FileAttributeKey.creationDate: Date()]
        )
    }


}

