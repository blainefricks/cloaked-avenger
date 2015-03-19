//
//  svn.swift
//  Subversion GUI
//
//  Created by Blaine Fricks on 3/19/15.
//  Copyright (c) 2015 Blaine Fricks. All rights reserved.
//

import Foundation

class Subversion {
  
  var repoPath = String()
  
  init(repoPath: String) {
    self.repoPath = repoPath
  }
  
  let task = NSTask()
  let pipe = NSPipe()
  
  func shellCommand(command: String) -> String {
    task.launchPath = "/bin/sh"
    task.currentDirectoryPath = repoPath
    task.arguments = ["-c", "\(command)"]
    let pipe = NSPipe()
    task.standardOutput = pipe
    task.launch()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = NSString(data: data, encoding: NSUTF8StringEncoding)!
    task.waitUntilExit()
    let status = task.terminationStatus
    println(status)
    return output
  }
  
  func saveSvnOutput(text: String, file: String) {
    if let dirs : [String] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as? [String] {
      let dir = dirs[0] //documents directory
      let path = dir.stringByAppendingPathComponent(file);
      
      // writing
      text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
      
      // reading
      let text2 = String(contentsOfFile: path, encoding: NSUTF8StringEncoding, error: nil)
    }
  }
  
  //
  // Subervion Commands
  //
  func add(path: String) -> String {
    // Add files, directories, or symbolic links.
    return shellCommand("svn add \(path)")
  }
  func blame(path: String) -> String {
    // Show author and revision information inline for the specified files or URLs.
    return shellCommand("svn blame \(path)")
  }
  func cat() -> String {
    return shellCommand("svn cat")
  }
  func changelist() -> String {
    return shellCommand("svn changelist")
  }
  func checkout() -> String {
    return shellCommand("svn checkout")
  }
  func cleanup() -> String {
    return shellCommand("svn cleanup")
  }
  func commit() -> String {
    return shellCommand("svn commit")
  }
  func copy() -> String {
    return shellCommand("svn copy")
  }
  func delete() -> String {
    return shellCommand("svn delete")
  }
  func diff(path: String) -> String {
    return shellCommand("svn diff \(path)")
  }
  func export() -> String {
    return shellCommand("svn export")
  }
  func Import() -> String {
    return shellCommand("svn import")
  }
  func info() -> String {
    return shellCommand("svn info")
  }
  func list() -> String {
    return shellCommand("svn list")
  }
  func lock() -> String {
    return shellCommand("svn lock")
  }
  func log() -> String {
    return shellCommand("svn log")
  }
  func merge() -> String {
    return shellCommand("svn merge")
  }
  func mergeinfo() -> String {
    return shellCommand("svn mergeinfo")
  }
  func mkdir() -> String {
    return shellCommand("svn mkdir")
  }
  func move() -> String {
    return shellCommand("svn move")
  }
  func patch() -> String {
    return shellCommand("svn patch")
  }
  func propdel() -> String {
    return shellCommand("svn propdel")
  }
  func propedit() -> String {
    return shellCommand("svn propedit")
  }
  func propget() -> String {
    return shellCommand("svn propget")
  }
  func proplist() -> String {
    return shellCommand("svn proplist")
  }
  func propset() -> String {
    return shellCommand("svn propset")
  }
  func relocate() -> String {
    return shellCommand("svn relocate")
  }
  func resolve() -> String {
    return shellCommand("svn resolve")
  }
  func resolved() -> String {
    return shellCommand("svn resolved")
  }
  func revert() -> String {
    return shellCommand("svn revert")
  }
  func status() -> String {
    return shellCommand("svn status")
  }
  func sw() -> String {
    return shellCommand("svn switch")
  }
  func unlock() -> String {
    return shellCommand("svn unlock")
  }
  func update() -> String {
    return shellCommand("svn udpate")
  }
  func upgrade() -> String {
    return shellCommand("svn upgrade")
  }
}








