import SwiftUI

extension Text {
    func customButton() -> some View {
        self
            .kerning(1)
            .font(.body)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity, alignment: .center)
            .customBackground(color: .mainColor)
    }

    func headlineFont() -> some View {
        self
            .kerning(1)
            .font(.headline)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding([.horizontal, .top])
            .accessibility(addTraits: .isHeader)
    }

    func bodyFont() -> some View {
        self
            .kerning(1)
            .font(.body)
            .frame(maxWidth: .infinity, alignment: .center)
            .fixedSize(horizontal: false, vertical: true)
            .multilineTextAlignment(.center)
            .padding([.horizontal, .top])
    }

    func largeTitleFont() -> some View {
        self
            .font(.largeTitle)
            .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 32)
            .accessibility(addTraits: .isHeader)
    }
}
