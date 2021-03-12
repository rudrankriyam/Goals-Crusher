import SwiftUI

struct GoalCheckMarkView: View {
    var goalCompleted: Bool

    var body: some View {
        Image(
            systemName: goalCompleted ? "checkmark.circle.fill" : "circle")
            .font(.system(size: 25))
            .foregroundColor(goalCompleted ? .white : .gray)
            .accessibility(
                label: goalCompleted ? Text("Goal Completed") : Text("Mark the goal complete"))
    }
}

struct GoalCheckMarkView_Previews: PreviewProvider {
    static var previews: some View {
        GoalCheckMarkView(goalCompleted: false)
    }
}
