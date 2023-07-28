//
//  question3.swift
//  questionApp
//
//  Created by natali oleinik on 7/28/23.
//

import SwiftUI

struct question3: View {
    @State private var answer = "      "
     
    let answers = [
        "So cute, but not the one",
        "Yes, white panthers are so beautiful🤍 ",
        " ",
    ]
    var body: some View {
        NavigationStack{
            VStack {
                Text ("Pick an animal")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.873, saturation: 0.649, brightness: 0.941))
                    .padding(.bottom, 30.0)
                HStack{
                    Button(action: {
                        answer = answers[0]
                    }) {
                        Image ("bunnies")
                            .resizable()
                            .frame(width: 180.0, height: 180.0)
                            .cornerRadius(30)

                            .shadow(color: Color(red: 1.0, green: 0.75, blue: 0.79, opacity: 1), radius: 10)
                    }
                    Button(action: {
                        answer = answers[1]
                    }) {
                        Image ("panther")
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
                        Image ("flamingo")
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
                
            }
        }
        
        
        
    }
}

struct question3_Previews: PreviewProvider {
    static var previews: some View {
        question3()
    }
}
