//
//  CalculatorView.swift
//  Calculator
//
//  Created by Tawhid on 15/11/25.
//

import SwiftUI

struct CalculatorView: View {
    

    @EnvironmentObject private var viewModel: ViewModel
    
    var body: some View{
        VStack{
            Spacer()
            displayText
            buttonpad
        }
        .padding(Constants.padding)
        .background(Color.black)
        
    }
    
    }


// previews

struct CalculatorView_Previews: PreviewProvider{
    static var previews: some View{
        CalculatorView()
            .environmentObject(CalculatorView.ViewModel())
    }
}


//components


extension CalculatorView{
    private var displayText: some View{
        Text(viewModel.displayText)
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }
    
    
    private var buttonpad: some View{
        VStack(spacing: Constants.padding){
            ForEach(viewModel.buttonTypes, id: \.self){ row in
                HStack(spacing: Constants.padding){
                    ForEach(row, id: \.self){ buttonType in
                        CalculatorButton(buttonType: buttonType)
                        
                    }
                }
            }
        }
    }
    
    
    
}







//
//
//#Preview {
//    CalculatorView()
//}
