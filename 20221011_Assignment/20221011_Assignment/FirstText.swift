//
//
//  FirstText.swift
//  Week2_Assignment
//
//  Created by 김응관 on 2022/10/18.
//

import SwiftUI

struct FirstText: View {
    var body : some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock").font(.title)
                .fontWeight(.regular)
            HStack {
                Text("Joshua Tree National Park").font(.subheadline)
                Spacer()
                Text("California").font(.subheadline)
            }
            .foregroundColor(.gray)
            Divider()
                .foregroundColor(.gray)
            Text("About Turtle Rock").font(.title2)
            Text("Descriptive text goes here.")
        }.padding()
    }
}
