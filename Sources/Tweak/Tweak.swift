public struct Tweak {
    public init(
        id: ID,
        args: [String: Any]
    ) {
        self.id = id
        self.args = args
    }

    public let id: ID
    public let args: [String: Any]
    
    public struct ID: RawRepresentable, ExpressibleByStringLiteral {
        public typealias StringLiteralType = String

        public var rawValue: String

        public init?(rawValue: String) {
            self.rawValue = rawValue
        }

        public init(stringLiteral value: String) {
            self.rawValue = value
        }
    }
}
