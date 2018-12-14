//
//  AppDelegate.swift
//  OptimizingCollections
//
//  Created by Faisal Ikwal on 14/12/18.
//  Copyright © 2018 Exilant Technologies. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        orderedSetTest()
    }

    func sortedArrayTest() {
        var set = SortedArray<Int>()
        for i in (0 ..< 22).shuffled() {
            set.insert(2 * i)
        }
        print(set)
    }

    func orderedSetTest() {
        var set = OrderedSet<Int>()
        for i in (1 ... 20).shuffled() {
            set.insert(i)
        }
        print(set)

        print("7: ", set.contains(7))
        print("42: ", set.contains(42))

        print(set.reduce(0, +))

        let copy = set
        set.insert(42)
        print(copy, set)
    }
}

