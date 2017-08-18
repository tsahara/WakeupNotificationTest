//
//  AppDelegate.swift
//  WakeNotificationTest
//
//  Created by Tomoyuki Sahara on 2017/08/18.
//  Copyright © 2017 Tomoyuki Sahara. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let notificationCenter = NSWorkspace.shared().notificationCenter
        notificationCenter.addObserver(self, selector: #selector(AppDelegate.sleep), name: NSNotification.Name.NSWorkspaceWillSleep, object: nil)
        notificationCenter.addObserver(self, selector: #selector(AppDelegate.wakeup), name: NSNotification.Name.NSWorkspaceDidWake, object: nil)
        print("observing...")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func wakeup(notification: NSNotification) {
        print("wake up!")
    }

    func sleep(notification: NSNotification) {
        print("sleeping...")
    }
}

