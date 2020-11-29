//
//  ContentView.swift
//  Shared
//
//  Created by dominator on 27/06/20.
//

import SwiftUI

struct ProgressComponent: View {
    
    @State var barProgress: CGFloat = 0.2
    @State var guageProgress: CGFloat = 0.2
    
    var body: some View {
        ScrollView {
            VStack(spacing: 50) {
                GroupBox{
                    VStack{
                        Text("Activity Indicator")
                        ProgressView()
                    }
                }
                VStack{
                    Text("Activity Indicator with title")
                    GroupBox{
                        ProgressView("Loading...")
                    }
                }
                GroupBox{
                    VStack{
                        Text("Progress Bar")
                        ProgressView(value: barProgress, total: 1.0)
                        Stepper(
                            "Progress",
                            value: $barProgress,
                            in: 0...1,
                            step: 0.1
                        )
                    }
                }
                // CircularProgressViewStyle only works in macOS as of now it creates an activity idicator if used in iOS or iPadOS
                #if os(macOS)
                GroupBox{
                    VStack{
                        Text("Progress Guage")
                        ProgressView(value: guageProgress)
                            .progressViewStyle(CircularProgressViewStyle())
                        Stepper(
                            "Progress",
                            value: $guageProgress,
                            in: 0...1,
                            step: 0.1
                        )
                    }
                }
                #endif
            }
            .padding(100)
        }
        .navigationTitle("ProgressView")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(OSX 11.0, *) {
            ProgressComponent()
        }
    }
}
