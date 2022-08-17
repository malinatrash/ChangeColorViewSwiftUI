//
//  SliderColorView.swift
//  ChangeColorViewSwiftUI
//
//  Created by Pavel Naumov on 17.08.2022.
//

import SwiftUI

struct SliderColorView: View {
    @Binding var value: Double
    let color: Color
    var body: some View {
        Slider(value: $value, in: 0...255)
            .accentColor(color)
    }
}
