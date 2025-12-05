//
//  CalculatorView.swift
//  Calculator
//
//  Created by Tawhid on 15/11/25.
//

import SwiftUI

struct CalculatorView: View {
    var body: some View {
        VStack{
            
            Spacer()
            Text("0")
                .padding()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .font(.system(size: 88, weight: .light))
                .lineLimit(1)
                .minimumScaleFactor(0.2)
            
            //tobutton
        }


        .background(Color.black)
    }
}

#Preview {
    CalculatorView()
}
