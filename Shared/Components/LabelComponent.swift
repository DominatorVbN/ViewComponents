//
//  Labels.swift
//  ViewComponents
//
//  Created by dominator on 29/06/20.
//

import SwiftUI

struct LabelComponent: View {
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 20) {
                GroupBox {
                    Label(
                        "Default label",
                        systemImage: "rectangle.3.offgrid.fill"
                    )
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                    )
                }
                
                GroupBox {
                    Label {
                        Text("Custom label")
                            .foregroundColor(.primary)
                            .padding(10)
                            .background(
                                Color.gray
                                    .opacity(0.3)
                            )
                            .clipShape(Capsule())
                            .frame(
                                maxWidth: .infinity,
                                alignment: .leading
                            )
                    } icon: {
                        Circle()
                            .fill(Color.blue)
                            .frame(
                                width: 30,
                                height: 30
                            )
                    }
                    .shadow(radius: 10)
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                    )
                }
                
                GroupBox(label: Text("Icon only label")) {
                    Label(
                        "Icon only label",
                        systemImage: "rectangle.3.offgrid.fill"
                    )
                    .labelStyle(IconOnlyLabelStyle())
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                    )
                }
                
                GroupBox {
                    Label(
                        "Title only label",
                        systemImage: "rectangle.3.offgrid.fill"
                    )
                    .labelStyle(TitleOnlyLabelStyle())
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                    )
                }
                
            }
            .padding()
            .navigationTitle("Label")
        }
        
    }
}

struct Labels_Previews: PreviewProvider {
    static var previews: some View {
        if #available(OSX 11.0, *) {
            LabelComponent()
        }
    }
}
