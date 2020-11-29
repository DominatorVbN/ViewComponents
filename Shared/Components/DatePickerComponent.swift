//
//  PickerControl.swift
//  ViewComponents
//
//  Created by dominator on 27/06/20.
//

import SwiftUI

struct DatePickerComponent: View {
    @State var selectedDate: Date = Date()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20){
                
                GroupBox(label: Text("Inline Date Time Picker")) {
                    DatePicker(
                        "Title",
                        selection: $selectedDate
                    )
                    .labelsHidden()
                    .frame(minHeight: 45)
                }
                
                GroupBox(label: Text("Picker with title")) {
                    DatePicker(
                        "Date picker title",
                        selection: $selectedDate
                    )
                    .frame(minHeight: 45)
                }
                
                GroupBox(label: Text("Graphical Date Picker")) {
                    DatePicker(
                        "Title",
                        selection: $selectedDate
                    )
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .labelsHidden()
                    .frame(minHeight: 400)
                }
                
                //Wheel style is only avaiable for iOS Platform
                #if os(iOS)
                GroupBox(label: Text("Old wheel style Picker")) {
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
        .navigationTitle("DatePicker")
    }
}

struct PickerControl_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerComponent()
    }
}
