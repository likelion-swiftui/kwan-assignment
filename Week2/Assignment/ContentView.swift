//
//  ContentView.swift
//  Week2
//
//  Created by 김응관 on 2022/10/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading){
                    Text("서울").font(.title2)
                    Text("63°").font(.largeTitle)
                }
                Spacer()
                VStack {
                    Image(systemName: "sun.max.fill").imageScale(.large).foregroundColor(.yellow)
                    Text("맑음").font(.title3)
                    Text("H:68° L:42°").font(.title3)
                }
            }
            Spacer().frame(height:25)
            HStack{
                VStack(alignment: .center){
                    Text("8AM").font(.title3)
                    Spacer().frame(height:20)
                    Image(systemName: "sun.max.fill").imageScale(.large).foregroundColor(.yellow)
                    Spacer().frame(height:20)
                    Text("63°").font(.title3)
                }
                VStack(alignment: .center){
                    Text("9AM").font(.title3)
                    Spacer().frame(height:20)
                    Image(systemName: "sun.max.fill").imageScale(.large).foregroundColor(.yellow)
                    Spacer().frame(height:20)
                    Text("63°").font(.title3)
                }
                VStack(alignment: .center){
                    Text("10AM").font(.title3)
                    Spacer().frame(height:20)
                    Image(systemName: "sun.max.fill").imageScale(.large).foregroundColor(.yellow)
                    Spacer().frame(height:20)
                    Text("64°").font(.title3)
                }
                VStack(alignment: .center){
                    Text("11AM").font(.title3)
                    Spacer().frame(height:20)
                    Image(systemName: "sun.max.fill").imageScale(.large).foregroundColor(.yellow)
                    Spacer().frame(height:20)
                    Text("61°").font(.title3)
                }
                VStack(alignment: .center){
                    Text("12PM").font(.title3)
                    Spacer().frame(height:20)
                    Image(systemName: "sun.max.fill").imageScale(.large).foregroundColor(.yellow)
                    Spacer().frame(height:20)
                    Text("62°").font(.title3)
                }
            }
        }.padding().frame(width:400, height:260).foregroundColor(Color.white).background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
