//
//  Node.swift
//  LInkedListHasCycleSwift
//
//  Created by Rodrigo Carballo on 3/26/15.
//  Copyright (c) 2015 Rodrigo Carballo. All rights reserved.
//

import Cocoa

class Node: NSObject {
    
    var next : Node?
    var data : integer_t = 0
    
    func containsCycle(node : Node) -> Bool {
        var stepping1 : Node = node
        var stepping2 : Node = node
        
        while(stepping1.next != nil) {
            if (stepping2.next?.next == nil) {
                return false
            }
            stepping1 = stepping1.next!
            stepping2 = stepping2.next!.next!
            
            if (stepping1 == stepping2) {
                return true
            }
        }
        return false
            
        }

}
