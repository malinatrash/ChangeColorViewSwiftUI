//
//  ChangeColorStackView.swift
//  ChangeColorViewSwiftUI
//
//  Created by Pavel Naumov on 17.08.2022.
//

import SwiftUI

struct ChangeColorStackView: View {
    
    @Binding var tempComponent: String
    @Binding var component: Double
    let color: Color
    let colorTitle: String

    var body: some View {
        HStack {
            Text("\(lround(component))")
                .foregroundColor(.white)
                .frame(width: 35, height: 25)
            SliderColorView(value: $component, color: color)
            TextFieldView(textValue: $tempComponent, placeholder: colorTitle)
        }
    }
}
