//
//  Links.swift
//  ViewComponents
//
//  Created by dominator on 29/06/20.
//

import SwiftUI

struct LinkComponent: View {
    
    @Environment(\.openURL) var openURL
    let url = URL(string: "https://amitdev.codes")!
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20){
                GroupBox(label: Text("Default")) {
                    Link(
                        "Visit Site",
                        destination: url
                    )
                    .padding()
                }
                
                GroupBox(label: Text("Custom Style")) {
                    Link(
                        "Visit Site",
                        destination: url
                    )
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                    .padding()
                }
                
                GroupBox(label: Text("Custom View")) {
                    Link(destination: url) {
                        Text("Custom View Link")
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                Capsule()
                            )
                            .shadow(radius: 10)
                    }
                    .padding()
                }
                
                GroupBox(label: Text("Open link from Button")){
                    Button("Visit Site") {
                        openURL(url)
                    }
                    .padding()
                }
            }
            .padding()
            .frame(minWidth: 400, minHeight: 600)
        }
        .navigationTitle("Link")
    }
}

struct Links_Previews: PreviewProvider {
    static var previews: some View {
        if #available(OSX 11.0, *) {
            LinkComponent()
        }
    }
}
