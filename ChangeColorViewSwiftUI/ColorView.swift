//
//  ColorView.swift
//  ChangeColorViewSwiftUI
//
//  Created by Pavel Naumov on 17.08.2022.
//

import SwiftUI

struct ColorView: View {
    let redComponent: Double
    let greenComponent: Double
    let blueComponent: Double
    var body: some View {
        RoundedRectangle(cornerRadius: 25, style: .continuous)
            .foregroundColor(
                Color(
                    red: Double(redComponent / 255),
                    green: Double(greenComponent / 255),
                    blue: Double(blueComponent / 255)
                ))
                .frame(width: 300, height: 150)
                .overlay(
                    RoundedRectangle(
                        cornerRadius: 25,
                        style: .continuous
                    )
                    .stroke(Color.white, lineWidth: 4))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redComponent: 21, greenComponent: 255, blueComponent: 255)
    }
}
