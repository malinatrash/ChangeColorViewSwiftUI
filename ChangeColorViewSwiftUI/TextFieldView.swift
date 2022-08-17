//
//  TextFieldView.swift
//  ChangeColorViewSwiftUI
//
//  Created by Pavel Naumov on 17.08.2022.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var textValue: String
    let placeholder: String
    var body: some View {
        TextField(placeholder, text: $textValue)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.gray)
                
            )
            .frame(width: 60, height: 25)
            .keyboardType(.decimalPad)
    }
}
