//
//  AppDelegate.swift
//  Subversion GUI
//
//  Created by Blaine Fricks on 3/18/15.
//  Copyright (c) 2015 Blaine Fricks. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!

  var masterViewController: MasterViewController!

  func applicationDidFinishLaunching(aNotification: NSNotification) {
    // Insert code here to initialize your application
    
    //
    // Connect window to masterViewController
    //
    masterViewController = MasterViewController(nibName: "MasterViewController", bundle: nil)
    window.contentView.addSubview(masterViewController.view)
    masterViewController.view.frame = (window.contentView as NSView).bounds
    
    }

  func applicationWillTerminate(aNotification: NSNotification) {
    // Insert code here to tear down your application
  }


}
