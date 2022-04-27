public protocol TweakEmitter {
    func emit(_ tweak: Tweak)
    func register(_ receiver: TweakReceiver)
}
