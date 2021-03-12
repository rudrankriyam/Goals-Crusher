import SwiftUI

struct GoalsListView: View {
    var goals: [Goal]

    var body: some View {
        ScrollView {
            ForEach(goals) { goal in
                GoalRow(goal: goal)
            }
            .padding(.top)
        }
    }
}

struct GoalsListView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsListView(goals: [Goal]())
    }
}
