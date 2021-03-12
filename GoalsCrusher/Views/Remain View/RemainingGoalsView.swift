import SwiftUI

struct RemainingGoalsView: View {
    @EnvironmentObject var viewModel: GoalsViewModel

    var body: some View {
        NavigationView {
            GoalsListView(goals: viewModel.remainingGoals)
                .padding(.horizontal)
                .navigationBarTitle("Remaining Goals")
        }
    }
}

struct RemainingGoalsView_Previews: PreviewProvider {
    static var previews: some View {
        RemainingGoalsView()
    }
}
