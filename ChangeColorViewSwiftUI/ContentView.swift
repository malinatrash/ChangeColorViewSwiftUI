//
//  ContentView.swift
//  ChangeColorViewSwiftUI
//
//  Created by Pavel Naumov on 17.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redComponent = Double.random(in: 0...255)
    @State private var greenComponent =  Double.random(in: 0...255)
    @State private var blueComponent = Double.random(in: 0...255)
    
    @State private var tempRedComponent = ""
    @State private var tempGreenComponent = ""
    @State private var tempBlueComponent = ""
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                ColorView(
                    redComponent: redComponent,
                    greenComponent: greenComponent,
                    blueComponent: blueComponent
                )
                
                Spacer()
                
                VStack {
                    ChangeColorStackView(
                        tempComponent: $tempRedComponent,
                        component: $redComponent,
                        color: .red,
                        colorTitle: " Red"
                    )
                    
                    ChangeColorStackView(
                        tempComponent: $tempGreenComponent,
                        component: $greenComponent,
                        color: .green,
                        colorTitle: " Green"
                    )
                    
                    ChangeColorStackView(
                        tempComponent: $tempBlueComponent,
                        component: $blueComponent,
                        color: .blue,
                        colorTitle: " Blue"
                    )
                }
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            saveChanges()
                        }
                    }
                }
            }.padding()
            Spacer()
        }.onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
    private func saveChanges() {
        redComponent = Double(tempRedComponent) ?? redComponent
        tempRedComponent = ""
        greenComponent = Double(tempGreenComponent) ?? greenComponent
        tempGreenComponent = ""
        blueComponent = Double(tempBlueComponent) ?? blueComponent
        tempBlueComponent = ""
        UIApplication.shared.endEditing()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
