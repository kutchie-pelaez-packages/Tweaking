public struct TweakKey: Hashable, RawRepresentable, ExpressibleByStringLiteral {
    public typealias StringLiteralType = String

    public var rawValue: String

    public init(_ function: String = #function) {
        self.rawValue = function
    }

    public init?(rawValue: String) {
        self.rawValue = rawValue
    }

    public init(stringLiteral value: String) {
        self.rawValue = value
    }
}
