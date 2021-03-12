import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: GoalsViewModel

    var body: some View {
        TabView {
            GoalsView()
                .tabItem {
                    Image(systemName: "calendar")
                        .font(.system(size: 20))
                    Text("GOALS")
            }
            .tag(0)

            RemainingGoalsView()
                .tabItem {
                    Image(systemName: "timer")
                        .font(.system(size: 20))
                    Text("REMAIN")
            }
            .tag(1)

            ProgressView(progressViewModel:
                ProgressViewModel(goalsViewModel: viewModel))
                .tabItem {
                    Image(systemName: "chart.bar")
                        .font(.system(size: 20))
                    Text("PROGRESS")
            }
            .tag(2)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .accentColor(.mainColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
