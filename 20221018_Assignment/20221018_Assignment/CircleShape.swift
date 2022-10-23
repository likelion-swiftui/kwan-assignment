//
//  CircleShape.swift
//  20221018_Assignment
//
//  Created by 김응관 on 2022/10/23.
//

import SwiftUI

struct CircleShape: View {
    var text: WelcomeElement
    var body: some View {
        Image(text.imageName)
            .resizable()
            .clipShape(Circle())
            .frame(width: 230, height: 230)
            .overlay {
                Circle().stroke(.white, lineWidth: 6)
            }
            .shadow(radius: 5)
    }
}
