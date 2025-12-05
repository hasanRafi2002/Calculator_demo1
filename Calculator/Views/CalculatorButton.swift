import SwiftUI

struct CalculatorButton: View {
    let buttonType: ButtonType
    var action: () -> Void = {}

    init(buttonType: ButtonType) {
        self.buttonType = buttonType
    }

    var body: some View {
        Button(action: action) {
            Text(buttonType.description)
                .frame(width: 64, height: 64)
                .background(buttonType.backgroundColor)
                .foregroundColor(buttonType.foregroundColor)
                .clipShape(Circle())
        }
        .padding(Constants.padding)
    }
}

// Supporting types for standalone compilation

struct Constants {
    static let padding: CGFloat = 8
}

struct ButtonType {
    let description: String
    let backgroundColor: Color
    let foregroundColor: Color
}
