public struct Tweak {
    public init(
        id: TweakID,
        args: [TweakKey: Any] = [:]
    ) {
        self.id = id
        self.args = args
    }

    public let id: TweakID
    public let args: [TweakKey: Any]
}
