//
//  install.swift
//  Install MVVM Template
//
//  Created by Bogdan Evsenev on 25.06.19.
//

import Foundation

let templateName = "MVVM Module.xctemplate"
let destinationFolder = "\(NSHomeDirectory())/Library/Developer/Xcode/Templates/Architecture"

func moveTemplate() {
    let fileManager = FileManager.default
    printInConsole(destinationFolder)
    do {
        let destinationPath = destinationFolder + "/\(templateName)"
        let url = URL(fileURLWithPath: destinationPath)
        let templatePath = fileManager.currentDirectoryPath + "/\(templateName)"

        printInConsole("destinationPath = " + destinationPath)
        printInConsole("url = " + url.absoluteString)
        printInConsole("templatePath = " + templatePath)

        if !fileManager.fileExists(atPath: destinationPath) {
            let destinationFolderURL = URL(fileURLWithPath: destinationFolder)
            try fileManager.createDirectory(at: destinationFolderURL, withIntermediateDirectories: true, attributes: nil)
            try fileManager.copyItem(atPath: templatePath, toPath: destinationPath)
            printInConsole("✅ MVVM Template succesfully installed.")
        } else {
            try _ = fileManager.replaceItemAt(url, withItemAt: URL(fileURLWithPath: templatePath))
            printInConsole("✅ MVVM Template already exists. Has been succesfully replaced.")
        }
    } catch let error as NSError {
        printInConsole("⛔️ Error: \(error.localizedDescription)")
    }
}

func printInConsole(_ message:Any) {
    print("\(message)")
    print("=================================")
}

moveTemplate()
