import SwiftUI

struct ProgressRingView: View {
    var progress: CGFloat
    var lineWidth: CGFloat = 20
    var size: CGFloat = 150
    var gradient = [.mainColor, Color.mainColor.opacity(0.5)]

    var body: some View {
        ZStack {
            Circle()
                .stroke(Color(.systemGray6), style:
                    StrokeStyle(lineWidth: lineWidth))
                .frame(width: size, height: size)

            Circle()
                .trim(from: 1 - progress, to: 1)
                .stroke(
                    LinearGradient(
                        gradient: Gradient(colors: gradient),
                        startPoint: .leading, endPoint: .trailing),
                    style: StrokeStyle(lineWidth: lineWidth, lineCap: .round)
            )
                .rotationEffect(Angle(degrees: 90))
                .rotation3DEffect(Angle(degrees: 180),
                                  axis: (x: 1, y: 0, z: 0))
                .frame(width: size, height: size)

            Text("\(Int(progress * 100))%")
                .font(.title)
                .foregroundColor(.secondary)
                .fontWeight(.bold)
                .animation(nil)
                .accessibility(label:
                    Text("\(Int(progress * 100))% completed"))
        }
    }
}

struct ProgressRingView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressRingView(progress: 0.1)
    }
}
