import Core
import Tweaking

final class TweakEmitterImpl: TweakEmitter {
    private var receivers = WeakArray<TweakReceiver>()

    // MARK: - TweakEmitter

    func emit(_ tweak: Tweak) {
        receivers.forEach { $0.receive(tweak) }
    }

    func register(_ receiver: TweakReceiver) {
        receivers.append(receiver)
    }
}
