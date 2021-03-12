import SwiftUI

struct GoalRow: View {
    var goal: Goal
    @EnvironmentObject var viewModel: GoalsViewModel

    var body: some View {
        HStack(spacing: 12) {
            GoalImageView(goalCompleted: goal.goalCompleted)

            GoalDescriptionView(goal: goal)

            Spacer()

            Button(action: {
                withAnimation(.easeInOut) {
                    self.viewModel.toggleGoal(goal: self.goal)
                }
            }, label: {
                GoalCheckMarkView(goalCompleted: goal.goalCompleted)
            })
        }
        .padding(20)
        .customBackground(color: goal.goalCompleted ? .mainColor : .backgroundColor)
        .padding(.bottom, 5)
    }
}

struct GoalRow_Previews: PreviewProvider {
    static var previews: some View {
        GoalRow(goal: testGoals[0])
    }
}
