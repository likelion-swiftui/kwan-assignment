//
//  FirstText.swift
//  20221018_Assignment
//
//  Created by 김응관 on 2022/10/23.
//

import SwiftUI

struct FirstText: View {
    var words: WelcomeElement
    
    var body : some View {
            VStack(alignment: .leading) {
                Text(words.name).font(.title)
                    .fontWeight(.regular)
                HStack {
                    Text(words.park).font(.subheadline)
                    Spacer()
                    Text(words.state).font(.subheadline)
                }
                .foregroundColor(.gray)
                Divider()
                    .foregroundColor(.black)
                Text("About "+words.name).font(.title2)
                //Text("Descriptive text goes here.")
                Text(words.welcomeDescription)
            }.padding()
    }
}
