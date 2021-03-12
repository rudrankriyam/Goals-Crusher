import Foundation
import CoreGraphics

final class ProgressViewModel: ObservableObject {
    private var goalsViewModel: GoalsViewModel

    init(goalsViewModel: GoalsViewModel) {
        self.goalsViewModel = goalsViewModel
    }

    var completedGoalsCount: CGFloat {
        CGFloat(goalsViewModel.completedGoals.count)
    }

    var totalGoalsCount: CGFloat {
        CGFloat(goalsViewModel.goals.count)
    }

    var progressDescription: String {
        if totalGoalsCount > 0 {
            return """
            \(Int(completedGoalsCount)) out of
            \(Int(totalGoalsCount)) goals crushed
            """
        } else {
            return "Create some goals to crush!"
        }
    }
}
