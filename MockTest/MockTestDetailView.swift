//
//  MockTestDetailView.swift
//  MockTest
//
//  Created by Akash NS on 03/07/21.
//

import SwiftUI

let rupee = "\u{20B9}"
struct MockTestDetailView: View {
    var mockTest: MockTestData
    var body: some View {
        VStack{
            Image(mockTest.imageName).resizable().scaledToFit().frame(height:210).cornerRadius(15.0)
            Text(mockTest.title).font(.title2).lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/).padding(.vertical, 4)
            HStack(spacing:40){
                Text("\(rupee) \(mockTest.sellPrice)").bold().font(.title3).foregroundColor(.green)
                    .padding(.vertical, 10)
                
                Text("\(rupee) \(mockTest.originalPrice)").font(.headline).strikethrough()
                    .padding(.vertical, 10)
                
            }
            Text(mockTest.description)
                .padding()
            
            HStack(spacing:60){
                VStack{
                    Text("360")
                        .bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("Marks")
                }
                VStack{
                    Text("180")
                        .bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("Minutes")
                }
                VStack{
                    Text("90")
                        .bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("Questions")
                }
            }
            
            Spacer()
            Link(destination: mockTest.url, label: {
                Text("Enroll Now").bold().frame(width:320, height: 60).background(Color(.systemGreen)).foregroundColor(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).cornerRadius(100.0)
            })
            
        }
    }
}

struct MockTestDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MockTestDetailView(mockTest: MockTestDataList.TestList[1])
    }
}
