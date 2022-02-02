import SwiftUI

public struct CoffeeToast {
    public var text = "Hello, World!"

    public init() {}
}

public struct Toast: View {
    @Binding var isShown: Bool

    var color: Color
    var text: String
    var duration: Double
    var foregroundColor: Color

    public init(isShown: Binding<Bool>, color: Color, text: String, duration: Double, foregroundColor: Color = .white) {
        self._isShown = isShown
        self.color = color
        self.text = text
        self.duration = duration
        self.foregroundColor = foregroundColor
    }

    public var body: some View {
        VStack {
            Spacer()
            Text("Hello")
                .padding()
                .background(color)
                .foregroundColor(foregroundColor)
                .cornerRadius(10.0)
                .offset(x: 0, y: isShown ? -10 : 100)
                .animation(.default, value: isShown)
                .onChange(of: isShown) { newValue in
                    DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                        self.isShown = false
                    }
                }
        }
    }
}
