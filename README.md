# CoffeeToast

[![Swift](https://github.com/maeganwilson/CoffeeToast/actions/workflows/swift.yml/badge.svg)](https://github.com/maeganwilson/CoffeeToast/actions/workflows/swift.yml)

A simple Swift package to add Toast Notifications to your app. Install with the Swift Package Manager.

This package uses SwiftUI and requires a target of iOS 15.0. This means that the package isn't macOS compatible yet. It's planned for a future release.

## How to Use

Use the toast view by adding the view which presents the toast, see example below:

```swift
import SwiftUI
import CoffeeToast

struct ContentView: View {
    @State private var toastIsShown = false
    
    var body: some View {
        Toast("TOAST NOTIFICATION", isShown: $toastIsShown) {
            Button("Toggle Toast") {
                toastIsShown = true
            }   
        }
    }
}
```

## v1 Configuration options

- Background Color  
- Text  
- Duration  
- Foreground Color (AKA Text Color)
- Content view  
