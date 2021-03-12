import SwiftUI

struct GoalImageView: View {
    var goalCompleted: Bool

    var body: some View {
        Image(systemName:  goalCompleted ? "shield.fill" : "shield")
            .font(.system(size: 30))
            .foregroundColor(goalCompleted ? .white : .gray)
            .accessibility(hidden: true)
    }
}

struct GoalImageView_Previews: PreviewProvider {
    static var previews: some View {
        GoalImageView(goalCompleted: (false))
    }
}
