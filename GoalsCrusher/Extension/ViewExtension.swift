import SwiftUI

extension View {
    func customBackground(color: Color) -> some View {
        self
            .background(RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(color))
    }
}
