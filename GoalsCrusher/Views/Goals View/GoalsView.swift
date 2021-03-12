import SwiftUI

struct GoalsView: View {
    @State private var showingNewGoalView = false
    @EnvironmentObject var viewModel: GoalsViewModel

    var body: some View {
        NavigationView {
            VStack {
                GoalsListView(goals: viewModel.goals)

                Button(action: {
                    self.showingNewGoalView.toggle()
                }, label: {
                    Text("ADD NEW GOAL")
                        .customButton()
                        .padding(.bottom)
                })
            }
            .sheet(isPresented: $showingNewGoalView) {
                NewGoalView().environmentObject(self.viewModel)
            }
            .padding(.horizontal)
            .navigationBarTitle("Goals Crusher")
        }
    }
}

struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsView()
    }
}
