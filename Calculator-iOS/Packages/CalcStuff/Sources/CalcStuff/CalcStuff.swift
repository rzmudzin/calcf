public struct CalcStuff {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}


public class CalcStuffCalculator {
    public init() {}
    public func multiply(_ valueX: Int, with ValueY: Int) -> Int {
        valueX * ValueY
    }
    public func add(_ valueX: Int, ValueY: Int) -> Int {
        valueX + ValueY
    }
}
