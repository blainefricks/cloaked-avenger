//
//  MasterViewController.swift
//  Subversion GUI
//
//  Created by Blaine Fricks on 3/19/15.
//  Copyright (c) 2015 Blaine Fricks. All rights reserved.
//

import Cocoa
import AppKit

class MasterViewController: NSViewController {

  // Views in Split View
  @IBOutlet weak var splitView: NSSplitView!
  @IBOutlet weak var sidebarView: NSView!
  
  var sidebarViewController: SidebarViewController!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do view setup here.

    // Set Min, Max and Initial of NSSplitView Divider
    splitView.setPosition(150, ofDividerAtIndex: 0)
    splitView.maxPossiblePositionOfDividerAtIndex(200)
    splitView.minPossiblePositionOfDividerAtIndex(50)
    
    // Connect sidebar to sidebarViewController
    sidebarViewController = SidebarViewController(nibName: "SidebarViewController", bundle: nil)
    sidebarView.addSubview(sidebarViewController.view)
  }
  
    
}
