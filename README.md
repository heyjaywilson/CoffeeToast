# CoffeeToast

A simple Swift package to add Toast Notifications to your app.

This package uses SwiftUI and requires a target of iOS 15.0.

## How to Use

Wrap whatever view you want the Toast notifaction to appear in in a ZStack and add Toast as the last view.

```swift
import SwiftUI
import CoffeeToast

struct ContentView: View {
    @State private var toastIsShown = false
    var body: some View {
        ZStack {
            Button("Toggle Toast") {
                toastIsShown.toggle()
            }
            Toast(isShown: $toastIsShown, color: .red, text: "TOAST NOTIFICATION", duration: 2.0)
        }
    }
}
```

## v1 Configuration options

Background Color
Text
Duration
Foreground Color (AKA Text Color)
