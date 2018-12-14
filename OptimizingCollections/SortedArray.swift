//
//  SortedArray.swift
//  OptimizingCollections
//
//  Created by Faisal Ikwal on 14/12/18.
//  Copyright © 2018 Exilant Technologies. All rights reserved.
//

import Foundation
public struct SortedArray<Element: Comparable>: SortedSet {
    fileprivate var storage: [Element] = []
    public init() {}
}

extension SortedArray: RandomAccessCollection {
    public typealias Indices = CountableRange<Int>
    public var startIndex: Int { return storage.startIndex }
    public var endIndex: Int { return storage.endIndex }
    public subscript(index: Int) -> Element { return storage[index] }
}

extension SortedArray {
    func index(for element: Element) -> Int {
        var start = 0
        var end = storage.count
        while start < end {
            let middle = start + (end - start) / 2
            if element > storage[middle] {
                start = middle + 1
            }
            else {
                end = middle
            }
        }
        return start
    }
}

extension SortedArray {
    public func index(of element: Element) -> Int? {
        let index = self.index(for: element)
        guard index < count, storage[index] == element else { return nil }
        return index
    }

    public func contains(_ element: Element) -> Bool {
        let index = self.index(for: element)
        return index < count && storage[index] == element
    }

    public func forEach(_ body: (Element) throws -> Void) rethrows {
        try storage.forEach(body)
    }

    public func sorted() -> [Element] {
        return storage
    }

    @discardableResult
    public mutating func insert(_ newElement: Element) -> (inserted: Bool, memberAfterInsert: Element) {
        let index = self.index(for: newElement)
        if index < count && storage[index] == newElement {
            return (false, storage[index])
        }
        storage.insert(newElement, at: index)
        return (true, newElement)
    }
}
