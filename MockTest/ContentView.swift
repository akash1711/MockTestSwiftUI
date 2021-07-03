//
//  ContentView.swift
//  MockTest
//
//  Created by Akash NS on 03/07/21.
//

import SwiftUI

struct ContentView: View {
    var mockTests : [MockTestData] = MockTestDataList.TestList
    var body: some View {
        
        NavigationView{
            List(mockTests, id: \.id) { mockTest in
                
                NavigationLink(
                    destination: MockTestDetailView(mockTest: mockTest),
                    label: {
                        Image(mockTest.imageName).resizable().scaledToFit().frame(height: 100).padding(.horizontal, 7)
                        VStack(alignment: .leading, spacing:25, content: {
                            Text(mockTest.title).fontWeight(.medium).font(.headline)
                            Text("\u{20B9} \(mockTest.sellPrice)").fontWeight(.medium).font(.subheadline)
                        }).padding()
                    })
            }.navigationTitle("Mock Courses")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
