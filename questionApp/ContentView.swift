//
//  ContentView.swift
//  questionApp
//
//  Created by natali oleinik on 7/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Text ("How similar are we?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.856, saturation: 1.0, brightness: 1.0)/*@END_MENU_TOKEN@*/)
                    .lineLimit(nil)
                    .shadow(color: Color(red: 1.0, green: 0.75, blue: 0.79, opacity: 1), radius: 10)
    
                NavigationLink (destination: question1()){
                    Image ("heartforapp")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, -16.0)
                        .frame(width: 400.0, height: 300.0)
                }

                    Text ("Click the <3 get started!")
                        .foregroundColor(Color.gray)
                        .padding(.vertical, 13.0)
            }
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
