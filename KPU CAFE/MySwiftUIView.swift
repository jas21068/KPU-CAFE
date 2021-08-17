//
//  MySwiftUIView.swift
//  BBB
//
//  Created by Jaskirat Mangat on 2021-02-07.
//


import Foundation
import SwiftUI
import CoreLocation

struct MySwiftUIView: View {
    @StateObject private var modelData = ModelData()
    var body: some View {
        
            ContentView()
                .environmentObject(modelData)
            }
}
