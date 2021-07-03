//
//  MockTestData.swift
//  MockTest
//
//  Created by Akash NS on 03/07/21.
//

import SwiftUI

struct MockTestData: Identifiable{
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let sellPrice: String
    let originalPrice: String
    let url: URL
    
}

struct MockTestDataList {
    static let TestList = [
        MockTestData(imageName: "mt-1", title: "A Pro edition to crack interviews", description: "This is for intermediate persons who has some basic knowledge in C++", sellPrice: "199", originalPrice: "2000", url: URL(string: "https://google.com")!),
        MockTestData(imageName: "mt-2", title: "A Beginner edition to crack interviews", description: "This is for beginners looking to learn C++", sellPrice: "199", originalPrice: "2000", url: URL(string: "https://google.com")!),
    ]
}
