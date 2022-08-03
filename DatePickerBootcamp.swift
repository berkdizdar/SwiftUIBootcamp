//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 3.08.2022.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year:2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected Date Is:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
//            DatePicker("Select a Date", selection: $selectedDate)
//            DatePicker("Select a Date", selection: $selectedDate,
//                       displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .accentColor(.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //GraphicalDateStyle()
                    //WheelDataPickerStyle()
                )
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
