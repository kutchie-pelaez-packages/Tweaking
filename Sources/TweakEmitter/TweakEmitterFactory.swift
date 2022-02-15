public struct TweakEmitterFactory {
    public init() { }

    public func produce() -> TweakEmitter {
        TweakEmitterImpl()
    }
}
