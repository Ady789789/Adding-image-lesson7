//
//  ContentView.swift
//  Adding image lesson7
//
//  Created by natural health on 1/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 45))
                .shadow(radius: 50)
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"
                
                
                
                message = ( message == message1 ? message2 :message1)
                imageName = ( imageName == "photo4" ? "photo6" : "photo4")
            }
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
            
        }
        
        .padding()
    }
}

  #Preview {
    ContentView()
}
