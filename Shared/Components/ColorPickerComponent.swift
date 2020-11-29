//
//  ColorPickers.swift
//  ViewComponents
//
//  Created by dominator on 29/06/20.
//

import SwiftUI

struct ColorPickerComponent: View {
    
    @State var bgColor: Color = .red
    
    var body: some View {
        VStack {
            ColorPicker(
                "Set the background color",
                selection: $bgColor
            )
        }
        .padding()
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .background(bgColor)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("ColorPicker")
    }
}

struct ColorPickers_Previews: PreviewProvider {
    static var previews: some View {
        if #available(OSX 11.0, *) {
            ColorPickerComponent()
        }
    }
}
