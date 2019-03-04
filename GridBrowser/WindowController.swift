//
//  WindowController.swift
//  GridBrowser
//
//  Created by Alexandr Grigoriev on 2/18/19.
//  Copyright © 2019 AlexG. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController, NSTextFieldDelegate {
    @IBOutlet var addressEntry: NSTextField!
    
    override func windowDidLoad() {
        super.windowDidLoad()
        addressEntry.delegate = self
        
        window?.titleVisibility = .hidden
    }
    
    override func cancelOperation(_ sender: Any?) {
        window?.makeFirstResponder(self.contentViewController)
    }
}
