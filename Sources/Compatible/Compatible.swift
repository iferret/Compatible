// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

/// CompatibleWrapper
struct CompatibleWrapper<Base> {
    public let base: Base
    public init(base: Base) {
        self.base = base
    }
}

/// Compatible
protocol Compatible: AnyObject {}
extension Compatible {
    /// CompatibleWrapper<Self>
    public var hub: CompatibleWrapper<Self> {
        get { .init(base: self) }
        set { }
    }
}

/// CompatibleValue
protocol CompatibleValue {}
extension CompatibleValue {
    /// CompatibleWrapper<Self>
    public var hub: CompatibleWrapper<Self> {
        get { .init(base: self) }
        set { }
    }
}