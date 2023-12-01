import SwiftUI

struct AnimationStopModifier<Value: VectorArithmetic>: AnimatableModifier {
    
    @Binding private var mutableValue: Value
    @Binding private var isStop: Bool
    
    private let observedValue: Value
    
    var animatableData: Value {
        didSet {
            notifyProgress()
        }
    }
    
    init(observedValue: Value,
         mutableValue: Binding<Value>,
         isStop: Binding<Bool>) {
