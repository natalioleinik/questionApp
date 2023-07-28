//
//  question2.swift
//  questionApp
//
//  Created by natali oleinik on 7/28/23.
//

import SwiftUI

struct question2: View {
    @State private var answer = "      "
     
    let answers = [
        "Ooh fancy",
        "Good choice. I fell in love with Istanbul last summer!!! ",
        " ",
    ]
    var body: some View {
        NavigationStack{
            VStack {
                Text ("Pick a place to visit")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.873, saturation: 0.649, brightness: 0.941))
                    .padding(.bottom, 30.0)

                HStack{
                    Button(action: {
                        answer = answers[1]
                    }) {
                        Image ("turkey")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180.0, height: 180.0)
                            .cornerRadius(30)

                            .shadow(color: Color(red: 1.0, green: 0.75, blue: 0.79, opacity: 1), radius: 10)
                    }
                    Button(action: {
                        answer = answers[0]
                    }) {
                        Image ("nyc")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 180.0, height: 180.0)
                            .cornerRadius(30)

                            .shadow(color: Color(red: 1.0, green: 0.75, blue: 0.79, opacity: 1), radius: 10)
                    }
    
                }
                HStack{
                    Button(action: {
                        answer = answers[0]
                    }) {
                        Image ("venice")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180.0, height: 180.0)
                            .cornerRadius(30)

                            .shadow(color: Color(red: 1.0, green: 0.75, blue: 0.79, opacity: 1), radius: 10)
                    }
                }
                    Text (answer)
                    .multilineTextAlignment(.center)
                    .padding([.top, .leading, .trailing], 16.0)

                NavigationLink (destination: question3()){
                    Text ("Next Question")
                        .foregroundColor(Color.gray)
                        .padding(.vertical, 13.0)
                        .padding(.vertical, 13.0)
                        .underline()
                }
            }
        }
        
        
        
    }
}
struct question2_Previews: PreviewProvider {
    static var previews: some View {
        question2()
    }
}
