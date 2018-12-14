//
//  RedBlackTree.swift
//  OptimizingCollections
//
//  Created by Faisal Ikwal on 14/12/18.
//  Copyright © 2018 Exilant Technologies. All rights reserved.
//

import Foundation
/*
 1. The root node is black.
 2. Red nodes only have black children.(If they have any,thatis.)
 3. Every path from the root node to an empty spot in the tree contains the same
 number of black nodes.
 */
public enum Color {
    case black
    case red
}

public enum RedBlackTree<Element: Comparable> {
    case empty
    indirect case node(Color, Element, RedBlackTree, RedBlackTree)
}
