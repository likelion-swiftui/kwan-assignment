//
//  TaeCho.swift
//  20221018
//
//  Created by 김응관 on 2022/10/25.
//

import SwiftUI

struct TaeCho: View {
    @State private var problems: [String] =
        ["4 x 2", "5 x 5", "6 x 9"]
    @State private var indexes: [String] =
        ["문제 1", "문제 2", "문제 3"]
    @State private var answers: [String] =
        ["2", "8", "10"]
    @State private var numbers = 0
    
    
    var body: some View {
        VStack{
            P1(problems: $problems, indexes: $indexes, answers: $answers, numbers: $numbers)
        }
    }
}



struct P1: View {
    @Binding var problems: [String]
    @Binding var indexes: [String]
    @Binding var answers: [String]
    @Binding var numbers: Int
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text(indexes[numbers]).font(.largeTitle).fontWeight(.bold)
                Divider().background(Color.black)
                Spacer().frame(height: 40)
                Text(problems[numbers]).font(.title).foregroundColor(.green).fontWeight(.bold)
                Spacer()
                Button(action: {
                    numbers += 1
                }){
                    NavigationLink (destination: P2(problems: $problems, indexes: $indexes, answers: $answers, numbers: $numbers)) {
                        Circle()
                            .stroke(lineWidth: 2)
                            .background(Text(answers[numbers]))
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .frame(width: 50, height: 50)
                    }
                }
            }.padding()
        }
    }
}


struct P2: View {
    @Binding var problems: [String]
    @Binding var indexes: [String]
    @Binding var answers: [String]
    @Binding var numbers: Int
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text(indexes[numbers]).font(.largeTitle).fontWeight(.bold)
                Divider().background(Color.black)
                Spacer().frame(height: 40)
                Text(problems[numbers]).font(.title).foregroundColor(.green).fontWeight(.bold)
                Spacer()
                Button(action: {
                    numbers += 1
                }){
                    NavigationLink (destination: P3(problems: $problems, indexes: $indexes, answers: $answers, numbers: $numbers)) {
                        Circle()
                            .stroke(lineWidth: 2)
                            .background(Text(answers[numbers]))
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .frame(width: 50, height: 50)
                    }
                }
            }
        }.padding()
    }
}

struct P3: View {
    @Binding var problems: [String]
    @Binding var indexes: [String]
    @Binding var answers: [String]
    @Binding var numbers: Int
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text(indexes[numbers]).font(.largeTitle).fontWeight(.bold)
                Divider().background(Color.black)
                Spacer().frame(height: 40)
                Text(problems[numbers]).font(.title).foregroundColor(.green).fontWeight(.bold)
                Spacer()
                Button(action: {
                    numbers += 1
                })
                {
                    NavigationLink (destination: P1(problems: $problems, indexes: $indexes, answers: $answers, numbers: $numbers)) {
                        Circle()
                            .stroke(lineWidth: 2)
                            .background(Text(answers[numbers]))
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .frame(width: 50, height: 50)
                    }
                }
            }.padding()
        }
    }
}


struct TaeCho_Previews: PreviewProvider {
    static var previews: some View {
        TaeCho()
    }
}
