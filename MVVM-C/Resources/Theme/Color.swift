import UIKit

/// Namespace for placing Color related models / enums
enum Color {}

// MARK: - Background
extension Color {
    static let primaryBackground: UIColor = .systemBackground
    static let secondaryBackground: UIColor = .secondarySystemBackground
}

// MARK: - Text
extension Color {
    static let primaryText: UIColor = .label
}

// MARK: - Tint
extension Color {
    static let primaryTint: UIColor = UIColor(named: "AccentColor") ?? .clear
}
