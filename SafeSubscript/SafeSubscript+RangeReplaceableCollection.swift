//
//  SafeSubscript+RangeReplaceableCollection.swift
//  SafeSubscript
//
//  Created by kemchenj on 03/02/2018.
//  Copyright © 2018 kemchenj. All rights reserved.
//

public extension SafeSubscriptSupport where Base: RangeReplaceableCollection {

    subscript(_ range: Range<Index>) -> SubSequence? {
        guard
            let start = _index(range.lowerBound),
            let end = _index(range.upperBound)
        else {
            return nil
        }

        return base[start..<end]
    }

    subscript(_ range: PartialRangeFrom<Index>) -> SubSequence? {
        guard let start = _index(range.lowerBound) else { return nil }
        return base[start...]
    }

    subscript(_ range: PartialRangeUpTo<Index>) -> SubSequence? {
        guard let end = _index(range.upperBound) else { return nil }
        return base[..<end]
    }

    subscript(_ range: PartialRangeThrough<Index>) -> SubSequence? {
        guard let end = _index(range.upperBound) else { return nil }
        return base[...end]
    }

    subscript(_ range: ClosedRange<Index>) -> SubSequence? {
        guard
            let start = _index(range.lowerBound),
            let end = _index(range.upperBound)
        else {
            return nil
        }

        return base[start...end]
    }
}

public extension SafeSubscriptSupport where Base: RangeReplaceableCollection, Base.IndexDistance.Stride: SignedInteger {

    subscript(_ range: CountableRange<Index>) -> SubSequence? {
        guard
            let start = _index(range.lowerBound),
            let end = _index(range.upperBound)
        else {
            return nil
        }

        return base[start..<end]
    }

    subscript(_ range: CountableClosedRange<Index>) -> SubSequence? {
        guard
            let start = _index(range.lowerBound),
            let end = _index(range.upperBound)
        else {
            return nil
        }

        return base[start...end]
    }

    subscript(_ range: CountablePartialRangeFrom<Index>) -> SubSequence? {
        guard let start = _index(range.lowerBound) else { return nil }
        return base[start...]
    }
}
