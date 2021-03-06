public struct Tweak {
    public struct ID: RawRepresentable, ExpressibleByStringLiteral, Equatable {
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
        public static var newValue: Key = "newValue"

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

    public let id: ID
    public let args: [Key: Any]

    public init(
        id: ID,
        args: [Key: Any] = [:]
    ) {
        self.id = id
        self.args = args
    }
}
