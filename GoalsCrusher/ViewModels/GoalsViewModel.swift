import Foundation

final class GoalsViewModel: ObservableObject {
    @Published var goals: [Goal] = testGoals

    var completedGoals: [Goal] {
        goals.filter { $0.goalCompleted }
    }

    var remainingGoals: [Goal] {
        goals.filter { !$0.goalCompleted }
    }

    func createGoal(goal: Goal) -> Void {
        goals.append(goal)
    }

    func toggleGoal(goal: Goal) -> Void {
        if let currentGoal = goals.firstIndex(
            where: { $0.id == goal.id }) {
            goals[currentGoal].goalCompleted.toggle()
        }
    }
}
