import Foundation
import UIKit

/// Protocol used for providing identifiability for cell reuse identifiers
protocol Identifiable {
    static var identifier: String { get }
}

extension Identifiable {
    static var identifier: String { String(describing: self) }
}

extension UITableViewCell: Identifiable { }
