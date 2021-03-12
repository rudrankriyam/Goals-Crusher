import SwiftUI

struct GoalDescriptionView: View {
    var goal: Goal

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(goal.name)
                .font(.headline)

            if !goal.goalCompleted {
                Text("Deadline: \(getDate())")
                    .font(.subheadline)
            }
        }
        .foregroundColor(goal.goalCompleted ? .white : .primary)
        .accessibilityElement(children: .combine)
    }

    func getDate() -> String {
        let date = goal.date
        let format = DateFormatter()
        format.timeStyle = .none
        format.dateStyle = .medium
        return format.string(from: date)
    }
}

struct GoalDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        GoalDescriptionView(goal: testGoals[1])
    }
}
