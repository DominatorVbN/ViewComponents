//
//  DefaultDatePickerView.swift
//  ViewComponents
//
//  Created by dominator on 28/06/20.
//

import SwiftUI

struct DefaultDatePickerComponent: View {
      
    @State var selectedDate: Date = Date()
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
                
                GroupBox(label: Text("Inline Date Time Picker")) {
                    DatePicker(
                        "Title",
                        selection: $selectedDate
                    )
                        .labelsHidden()
                }
                
                GroupBox(label: Text("Picker with title")) {
                    DatePicker(
                        "Title",
                        selection: $selectedDate
                    )
                }

                GroupBox(label: Text("Graphical Date Picker")) {
                    DatePicker(
                        "Title",
                        selection: $selectedDate
                    )
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .frame(minHeight: 300)
                }
                
                #if os(iOS)
                GroupBox{
                    DatePicker(
                        "Title",
                        selection: $selectedDate
                    )
                    .datePickerStyle(WheelDatePickerStyle())
                    .labelsHidden()
                }
                #endif
            }
            .padding()
        }
    }
}

struct DefaultDatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultDatePickerComponent()
    }
}
