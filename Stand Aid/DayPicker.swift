//
//  DayPicker.swift
//  Stand Aid
//
//  Created by Nicholas Gramenos on 3/4/23.
//

import SwiftUI

struct DayPicker: View {
    let weekdays = ["M", "T", "W", "T", "F", "S", "S"]
    @State private var selectedWeekdayIndices: IndexSet = []

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Select Days")
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding(.leading)
                
                Picker(selection: $selectedWeekdayIndices, label: Text("")) {
                    ForEach(0..<7) { index in
                        Text(weekdays[index])
                            .foregroundColor(selectedWeekdayIndices.contains(index) ? .white : .primary)
                            .padding(.vertical, 8)
                            .frame(maxWidth: .infinity)
                            .background(selectedWeekdayIndices.contains(index) ? Color.blue : Color.white)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.blue, lineWidth: selectedWeekdayIndices.contains(index) ? 2 : 1)
                            )
                    }
                }

                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                
                Text("Selected weekdays: \(selectedWeekdayIndices.map { weekdays[$0] }.joined(separator: ", "))")
            }
            .padding()
            
        }
    }
}

struct DayPicker_Previews: PreviewProvider {
    static var previews: some View {
        DayPicker()
            .preferredColorScheme(.dark)
    }
}




//struct DayPicker: View {
//    let weekdays = ["M", "T", "W", "T", "F", "S", "S"]
//    @State private var selectedWeekdayIndex = 0
//
//    var body: some View {
//        VStack {
//            Picker(selection: $selectedWeekdayIndex, label: Text("")) {
//                ForEach(0..<7) { index in
//                    Text(weekdays[index])
//                }
//            }
//            .pickerStyle(SegmentedPickerStyle())
//
//            Text("Selected weekday: \(weekdays[selectedWeekdayIndex])")
//        }
//        .padding()
//    }
//}

