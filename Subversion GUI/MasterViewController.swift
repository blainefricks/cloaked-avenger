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

  // SplitView Container
  @IBOutlet weak var masterSplitView: NSSplitView!
  
  // Views in Split View
  @IBOutlet weak var sidebarView: NSView!
  
  var sidebarViewController: SidebarViewController!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do view setup here.

    // Set Initial, Min and Max Positions of NSSplitView Divider 0
    masterSplitView.setPosition(150, ofDividerAtIndex: 0)
//    NSSplitViewController().splitView(masterSplitView, constrainMinCoordinate: 50, ofSubviewAt: 0)
//    NSSplitViewController().splitView(masterSplitView, constrainMaxCoordinate: 200, ofSubviewAt: 0)
    
    // Connect sidebar to sidebarViewController
    sidebarViewController = SidebarViewController(nibName: "SidebarViewController", bundle: nil)
    sidebarView.addSubview(sidebarViewController.view)
  }
  
    
}
