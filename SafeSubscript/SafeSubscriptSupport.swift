//
//  SafeSubscriptSupport.swift
//  SafeSubscriptSupport
//
//  Created by kemchenj on 03/02/2018.
//  Copyright © 2018 kemchenj. All rights reserved.
//

public class SafeSubscriptSupport<Base: SafeSubscriptType & Collection> {

    public typealias Index = Base.IndexDistance
    public typealias Element = Base.Element
    public typealias SubSequence = Base.SubSequence
    typealias _Index = Base.Index

    public let base: Base

    init(_ base: Base) {
        self.base = base
    }

    var startIndex: _Index {
        return base.startIndex
    }

    var endIndex: _Index {
        return base.endIndex
    }

    func _index(_ i: Index) -> _Index? {
        return base.index(startIndex, offsetBy: i, limitedBy: endIndex)
    }
}

