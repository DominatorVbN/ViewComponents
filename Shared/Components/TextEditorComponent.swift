//
//  TextEditorView.swift
//  ViewComponents
//
//  Created by dominator on 01/07/20.
//

import SwiftUI

struct TextEditorComponent: View {
    
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var sizeClass
    #endif
    
    @State var defaultText: String = ""
    @State var styledText: String = ""
    
    @ViewBuilder
    var macOSBody: some View {
        HStack{
            GroupBox(label: Text("Default")) {
                TextEditor(text: $defaultText)
                    .cornerRadius(5)
            }
            GroupBox(label: Text("Styled")) {
                TextEditor(text: $styledText)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .cornerRadius(5)
            }
        }
        .padding()
    }
    
    #if os(iOS)
    @ViewBuilder
    var iOSBody: some View {
        Group{
            if sizeClass == .regular{
                HStack{
                    GroupBox(label: Text("Default")) {
                        TextEditor(text: $defaultText)
                            .cornerRadius(5)
                    }
                    GroupBox(label: Text("Styled")) {
                        TextEditor(text: $styledText)
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                            .cornerRadius(5)
                    }
                }
                .padding()
            }else{
                VStack{
                    GroupBox(label: Text("Default")) {
                        TextEditor(text: $defaultText)
                            .cornerRadius(5)
                    }
                    GroupBox(label: Text("Styled")) {
                        TextEditor(text: $styledText)
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                            .cornerRadius(5)
                    }
                }
                .padding()
            }
        }
        .navigationTitle("Text Editor")
    }
    #endif
    
    var body: some View {
        #if os(macOS)
        macOSBody
        #else
        iOSBody
        #endif
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextEditorComponent()
        }
    }
}
