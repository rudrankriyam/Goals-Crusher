import SwiftUI

struct ProgressView: View {
    @ObservedObject var progressViewModel: ProgressViewModel
    @EnvironmentObject var goalsViewModel: GoalsViewModel

    var body: some View {
        NavigationView {
            VStack {
                Group {
                    if progressViewModel.totalGoalsCount > 0 {
                        ProgressRingView(progress:
                            (progressViewModel.completedGoalsCount /
                                progressViewModel.totalGoalsCount))
                    }

                    Text(progressViewModel.progressDescription)
                        .bodyFont()
                        .animation(nil)
                }
                .accessibilityElement(children: .combine)

                Text("Goals Crushed")
                    .largeTitleFont()

                GoalsListView(goals: goalsViewModel.completedGoals)
            }
            .padding(.horizontal)
            .navigationBarTitle("Progress")
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(progressViewModel:
            ProgressViewModel(goalsViewModel: GoalsViewModel()))
    }
}
