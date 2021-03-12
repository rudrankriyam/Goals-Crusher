import Foundation

struct Goal: Identifiable, Hashable {
    var id = UUID()
    var name: String = "Goal Name"
    var date = Date()
    var goalCompleted: Bool = false
}

let testGoals = [
    Goal(name: "Understand Data Flow in SwiftUI",
         goalCompleted: true),
    Goal(name: "Finish the Article",
         goalCompleted: false),
    Goal(name: "Be a Goal Crusher :]",
         goalCompleted: false)
]
