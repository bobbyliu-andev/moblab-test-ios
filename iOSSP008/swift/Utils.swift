import Foundation

public class Utils: NSObject {
    var myName = "Chang Liu"
    public override init() {
        super.init()
        print("Utils initializing...")
    }
    @objc public func printMyName() {
        print("My name is \(myName)")
    }
}
