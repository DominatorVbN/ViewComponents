//
//  ContentView.swift
//  Shared
//
//  Created by dominator on 27/06/20.
//

import SwiftUI

struct ProgressControl: View {
    
    @State var progress: CGFloat = 0.2
    
    var body: some View {
        
        VStack(spacing: 50) {
            
            VStack{
                Text("Activity Indicator")
                ProgressView()
            }
            
            VStack{
                Text("Activity Indicator with title")
                ProgressView("Loading...")
            }
            

            Stepper("Progress", value: $progress, in: 0...1, step: 0.1)
            
            VStack{
                Text("Progress Bar")
                ProgressView(value: progress, total: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            }
            
            #if os(macOS)
            // CircularProgressViewStyle only works in macOS as of now it creates an activity idicator if used in iOS or iPadOS
            VStack{
                Text("Progress Guage")
                ProgressView(value: progress)
                    .progressViewStyle(CircularProgressViewStyle())
            }
            #endif
            
        }
        .padding(100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressControl()
    }
}
