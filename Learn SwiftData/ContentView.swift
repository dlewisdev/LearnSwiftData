//
//  ContentView.swift
//  Learn SwiftData
//
//  Created by Danielle Lewis on 12/19/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var context
    
    // Retrieves all of one data type from the db
    @Query private var items: [DataItem]
    
    
    var body: some View {
        VStack {
            List(items) { item in
                HStack {
                    Text(item.creationdate.description)
                    Spacer()
                    Button("Update") {
                        // Updates an item in the db
                        item.creationdate = Date()
                    }
                }
                .swipeActions {
                    // Deletes an item from the db
                    Button("Delete") {
                        context.delete(item)
                    }
                }
            }
            
            Button("Add") {
                //Create a new data item
                let data = DataItem()
                // Add it to the db
                context.insert(data)
            }
        }
    }
}

#Preview {
    ContentView()
}
