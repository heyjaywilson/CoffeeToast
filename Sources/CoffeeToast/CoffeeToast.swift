import SwiftUI

/// Toast notification
/// - Parameter isShown: The boolean variable that triggers if the notification is shown
/// - Parameter color: Background color of the notification
/// - Parameter text: Text the notification is supposed to show
/// - Parameter duration: How long is the notification supposed to show before dismissing
/// - Parameter foregroundColor: The color of the text. This is optional and defaults to `Color.white`
public struct Toast: View {
    @Binding var isShown: Bool

    var color: Color
    var text: String
    var duration: Double
    var foregroundColor: Color

    public init(isShown: Binding<Bool>,
                color: Color,
                text: String,
                duration: Double,
                foregroundColor: Color = .white) {
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
