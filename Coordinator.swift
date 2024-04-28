import UIKit

/// Protocol for coordinators
protocol Coordinator: AnyObject {
    var controller: UIViewController { get }
}
