import SwiftUI

struct NewGoalView: View {
    @State private var goal = Goal()
    @Environment(\.presentationMode) var presentation
    @EnvironmentObject var viewModel: GoalsViewModel

    var body: some View {
        NavigationView {
            ScrollView {
                Text("GOAL NAME")
                    .headlineFont()

                TextField("GOAL TO CRUSH", text: $goal.name)
                    .padding()
                    .customBackground(color: Color(.systemGray5))
                    .padding(.horizontal)
                
                Text("DEADLINE")
                    .headlineFont()

                DatePicker(selection: $goal.date,
                           in: Date()...,
                           displayedComponents: .date
                ) {
                    Text("Select a date")
                }
                .labelsHidden()
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                .customBackground(color: Color(.systemGray5))
                .padding(.horizontal)

                Button(action: {
                    if !self.goal.name.isEmpty {
                        self.viewModel.createGoal(goal: self.goal)
                        self.presentation.wrappedValue.dismiss()
                    }
                }, label: {
                    Text("CREATE GOAL")
                        .customButton()
                        .padding()
                })
            }
            .navigationBarTitle("New Goal")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NewGoalView_Previews: PreviewProvider {
    static var previews: some View {
        NewGoalView()
    }
}
