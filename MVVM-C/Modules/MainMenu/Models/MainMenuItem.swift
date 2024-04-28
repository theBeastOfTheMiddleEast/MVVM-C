import Foundation

enum MainMenuItem: Int, CaseIterable {
    case item0 = 0
    case item1
    case item2
    case item3
    case item4
    case item5
    case item6
    case item7
    
    var displayText: String {
        return NSLocalizedString("Item #\(rawValue)", comment: "")
    }
}
