//
//  MainView.swift
//  ViewComponents
//
//  Created by dominator on 28/06/20.
//

import SwiftUI


struct MainView: View {
    
    var list: some View {
        List{
            NavigationLink(destination: DatePickerComponent()){
                Label(
                    "DatePicker",
                    systemImage: "calendar"
                )
            }
            NavigationLink(destination: ProgressComponent()){
                Label(
                    "ProgressView",
                    systemImage: "arrow.2.circlepath.circle"
                )
            }
            NavigationLink(destination: ColorPickerComponent()){
                Label(
                    "ColorPicker",
                    systemImage: "eyedropper"
                )
            }
            NavigationLink(destination: LabelComponent()){
                Label(
                    "Label",
                    systemImage: "text.cursor"
                )
            }
            NavigationLink(destination: LinkComponent()){
                Label(
                    "Link",
                    systemImage: "globe"
                )
            }
            NavigationLink(destination: TextEditorComponent()){
                Label(
                    "TextEditor",
                    systemImage: "textbox"
                )
            }
            NavigationLink(destination: VideoPlayerComponent()){
                Label(
                    "VideoPlayer",
                    systemImage: "play.rectangle"
                )
            }
        }
        .navigationTitle("SwiftUI 2.0 Views")
    }
    
    var body: some View {
        NavigationView{
            #if os(macOS)
            list
                .listStyle(SidebarListStyle())
            #else
            list
                .listStyle(InsetGroupedListStyle())
            #endif
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
