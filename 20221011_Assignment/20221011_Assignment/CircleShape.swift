//
//  CircleShape.swift
//  Week2_Assignment
//
//  Created by 김응관 on 2022/10/18.
//

import SwiftUI

struct CircleShape: View {
    var body: some View {
        Image("turtlerock")
            .resizable()
            .clipShape(Circle())
            .frame(width: 230, height: 230)
            .overlay {
                Circle().stroke(.white, lineWidth: 6)
                    
            }
            .shadow(radius: 5)
    }
}
