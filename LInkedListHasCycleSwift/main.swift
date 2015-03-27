//
//  main.swift
//  LInkedListHasCycleSwift
//
//  Created by Rodrigo Carballo on 3/26/15.
//  Copyright (c) 2015 Rodrigo Carballo. All rights reserved.
//

import Foundation

var hasCycle :Bool = false

var node1 : Node = Node()
var node2 : Node = Node()
var node3 : Node = Node()
var node4 : Node = Node()
var node5 : Node = Node()

//this linkedlist will have a cycle

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node3

hasCycle = node1.containsCycle(node1)
println(hasCycle)

//this linkedlist will not have a cycle

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5

hasCycle = node1.containsCycle(node1)
println(hasCycle)









