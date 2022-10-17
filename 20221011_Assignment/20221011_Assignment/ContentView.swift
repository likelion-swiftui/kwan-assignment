//
//  ContentView.swift
//  Week2_Assignment
//
//  Created by 김응관 on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .top){
            VStack() {
                MapView().body.frame(height:300)
                    .overlay(
                        CircleShape().body
                            .offset(x: 0, y: 150)
                    )
                Spacer().frame(height: 120)
                FirstText().body
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
