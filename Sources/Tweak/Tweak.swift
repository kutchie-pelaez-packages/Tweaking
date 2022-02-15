public struct Tweak {
    public init(
        id: ID,
        args: [Key: Any] = [:]
    ) {
        self.id = id
        self.args = args
    }

    public let id: ID
    public let args: [Key: Any]
    
    public struct ID: RawRepresentable, ExpressibleByStringLiteral {
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

    public struct Key: Hashable, RawRepresentable, ExpressibleByStringLiteral {
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
}
