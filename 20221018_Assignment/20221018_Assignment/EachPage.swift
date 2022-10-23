//
//  EachPage.swift
//  20221018_Assignment
//
//  Created by 김응관 on 2022/10/23.
//

import SwiftUI
import MapKit
import CoreLocation

struct EachPage: View {
    var landmark: WelcomeElement
    var body: some View {
        NavigationView {
            ScrollView {
                HStack(alignment: .top){
                    VStack() {
                        MapView(wheres: landmark.mapPostion)
                            .frame(height: 300)
                            .overlay(
                                CircleShape(text: landmark)
                                    .offset(x: 0, y: 150)
                            )
                        Spacer().frame(height: 120)
                        FirstText(words: landmark)
                        Spacer()
                    }
                }
            }
        }.navigationBarTitle(landmark.name, displayMode: .inline)
    }
}
