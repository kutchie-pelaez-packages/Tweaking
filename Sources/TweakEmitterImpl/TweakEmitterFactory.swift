import Tweaking

public struct TweakEmitterFactory {
    public init() { }

    public func produce() -> TweakEmitter {
        TweakEmitterImpl()
    }
}
