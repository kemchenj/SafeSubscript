//
//  SafeSubscriptType.swift
//  SafeSubscript
//
//  Created by kemchenj on 03/02/2018.
//  Copyright © 2018 kemchenj. All rights reserved.
//

public protocol SafeSubscriptType: Collection {}

extension SafeSubscriptType {

    public var ss: SafeSubscriptSupport<Self> {
        return SafeSubscriptSupport<Self>(self)
    }
}

extension SafeSubscriptSupport{

    public subscript(_ i: Index) -> Element? {
        guard let transformed = _index(i) else { return nil }

        return base[transformed]
    }
}

extension String: SafeSubscriptType {}
extension Array: SafeSubscriptType {}
