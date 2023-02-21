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
        
        do {
            let fileUrl = newFolderUrl.appendingPathComponent("logs.txt")
            fileManager.createFile(atPath: fileUrl.path, contents: nil, attributes: [FileAttributeKey.creationDate: Date()]
            )
        }
        catch {
            print(error.localizedDescription)
        }
    }


}

