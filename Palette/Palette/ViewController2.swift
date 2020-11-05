//
//  ViewController2.swift
//  Palette
//
//  Created by Shuhrat Shadmonov on 14/08/2019.
//  Copyright © 2019 Shuhrat Shadmonov. All rights reserved.
//

import Cocoa

class ViewController2: NSViewController {

    @IBOutlet var colors: NSSegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = NSImage()

        image.backgroundColor = NSColor.blue
        
        let selected = colors.indexOfSelectedItem
        
        colors.setImage(image, forSegment: selected)
        
    }
    
}
