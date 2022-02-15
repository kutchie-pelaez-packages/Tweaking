import Core
import Tweak

final class TweakEmitterImpl: TweakEmitter {
    private var receivers = WeakArray<TweakReceiver>()

    // MARK: - TweakEmitter

    func emit(_ tweak: Tweak) {
        receivers.forEach { $0.receive(tweak: tweak) }
    }

    func register(_ receiver: TweakReceiver) {
        receivers.append(receiver)
    }
}
