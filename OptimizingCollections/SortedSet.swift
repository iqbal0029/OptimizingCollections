//
//  SortedSet.swift
//  OptimizingCollections
//
//  Created by Faisal Ikwal on 14/12/18.
//  Copyright © 2018 Exilant Technologies. All rights reserved.
//

import Foundation
/*public protocol SortedSet: BidirectionalCollection, SetAlgebra where Element: Comparable {

}*/

public protocol SortedSet: BidirectionalCollection, CustomStringConvertible, CustomPlaygroundDisplayConvertible where Element: Comparable {
    init()
    func contains(_ element: Element) -> Bool
    mutating func insert(_ newElement: Element) -> (inserted: Bool,memberAfterInsert: Element)

}

extension SortedSet {
    public var description: String {
        let contents = self.lazy.map { "\($0)" }.joined(separator: ", ")
        return "[\(contents)]" }
    public var playgroundDescription: Any {
        return String(describing: self)
    }
}


