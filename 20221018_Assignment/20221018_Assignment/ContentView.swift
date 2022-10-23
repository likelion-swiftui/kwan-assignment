//
//  ContentView.swift
//  20221018_Assignment
//
//  Created by 김응관 on 2022/10/22.
//

import UIKit
import SwiftUI
import MapKit
import CoreLocation

func loadJson<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // Bundle 에서 파일이름을 통하여 파일의 주소를 가져온다.
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("\(filename) not found.")
    }
    
    do {
        // 위에서 가져온 주소를 활용하여 Data structure 의 객체를 생성한다.
        // 이는 데이터를 Json decoding 에 활용할 수 있도록 하는 작업이라고 볼 수 있다.
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename): (error)")
    }
    
    do {
        // parse the data
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse \(filename): (error)")
    }
    
}


struct WelcomeElement: Codable, Hashable {
    
    let name: String
    let category: Category
    let city, state: String
    let id: Int
    let isFeatured, isFavorite: Bool
    let park: String
    let coordinates: Coordinates
    let welcomeDescription, imageName: String
    var mapPostion: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    
    enum CodingKeys: String, CodingKey, Hashable {
        case name, category, city, state, id, isFeatured, isFavorite, park, coordinates
        case welcomeDescription = "description"
        case imageName
    }
    
    struct Coordinates: Codable, Hashable {
        var longitude, latitude: Double
    }
}


enum Category: String, Codable, Hashable {
    case lakes = "Lakes"
    case mountains = "Mountains"
    case rivers = "Rivers"
}


var welcome: [WelcomeElement] = loadJson("landmarkData.json")
//파싱하는 함수 loadJson을 사용
//WelcomeElement는 Codable 프로토콜을 준수하므로 사용가능
//Codable 은 Decodable 와 Encodable 을 모두 포함하는 개념이다.


struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                ForEach(welcome, id: \.self) { item in
                    NavigationLink(destination: EachPage(landmark: item)){
                        HStack{
                            Image(item.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70, alignment: .leading)
                            VStack(alignment: .leading) {
                                Text("\(item.name)")
                                    .font(.title3)
                                    .fontWeight(.regular)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Landmarks")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
