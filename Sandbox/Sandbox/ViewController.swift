//
//  ViewController.swift
//  Sandbox
//
//  Created by Shuhrat Shadmonov on 14/07/2019.
//  Copyright © 2019 Shuhrat Shadmonov. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var dotView: NSView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let dotsView = createDotsView(withSize: 6, animationEnabled: true)
        dotView.addSubview(dotsView)
        
        dotsView.topAnchor.constraint(equalTo: dotView.topAnchor).isActive = true
        dotsView.leadingAnchor.constraint(equalTo: dotView.leadingAnchor).isActive = true
        dotsView.trailingAnchor.constraint(equalTo: dotView.trailingAnchor).isActive = true
        dotsView.bottomAnchor.constraint(equalTo: dotView.bottomAnchor).isActive = true
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

