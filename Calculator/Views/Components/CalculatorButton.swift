//
//
//
//
//
//
//import SwiftUI
//
//struct CalculatorButton: View {
//    let buttonType: ButtonType
//    var action: () -> Void = {}
//
//    init(buttonType: ButtonType) {
//        self.buttonType = buttonType
//    }
//
//    var body: some View {
//        Button(action: action) {
//            Text(buttonType.description)
//                .frame(width: 64, height: 64)
//                .background(buttonType.backgroundColor)
//                .foregroundColor(buttonType.foregroundColor)
//                .clipShape(Circle())
//        }
//        .padding(Constants.padding)
//    }
//}
//
//








import SwiftUI



    struct CalculatorButton: View {
        let buttonType: ButtonType
                
        var body: some View{
            Button(buttonType.description){ }
                .buttonStyle(CalculatorButtonStyle(
                    size: getButtonSize(),
                    backgroundColor: buttonType.backgroundColor,
                    foregroundColor: buttonType.foregroundColor,
                    isWide: buttonType == .digit(.zero)
                ))
        }

        
        
        private func getButtonSize() -> CGFloat{
            let screenWidth = UIScreen.main.bounds.width   // 400.0
            let buttonCount: CGFloat = 4
            let spacingCount: CGFloat = buttonCount + 1
            return (screenWidth - (spacingCount * Constants.padding))/buttonCount
            
        }
        
        
            
            
    }




