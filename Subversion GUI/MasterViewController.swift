//
//  MasterViewController.swift
//  Subversion GUI
//
//  Created by Blaine Fricks on 3/19/15.
//  Copyright (c) 2015 Blaine Fricks. All rights reserved.
//

import Cocoa
import AppKit

class MasterViewController: NSSplitViewController {

//  dont need this because it is already declared under NSSplitViewController
//  var splitView: NSSplitView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do view setup here.

    // Set Min, Max and Initial 
    splitView.minPossiblePositionOfDividerAtIndex(0)
    splitView.maxPossiblePositionOfDividerAtIndex(200)
    splitView.setPosition(50, ofDividerAtIndex: 100)
  }
  
    
}
