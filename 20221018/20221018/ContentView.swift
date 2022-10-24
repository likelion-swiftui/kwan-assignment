import SwiftUI

struct ContentView: View {
    @State private var problems: [String] =
    ["4 x 2", "5 x 5", "6 x 9", "12 x 7", "4 x 2", "5 x 5", "6 x 9", "12 x 7", "4 x 2", "5 x 5"]
    @State private var indexes: [String] =
    ["문제 1", "문제 2", "문제 3", "문제 4", "문제 5", "문제 6", "문제 7", "문제 8", "문제 9", "문제 10"]
    @State private var answers: [String] =
    ["2", "8", "10", "11", "27", "33", "8", "10", "11", "27"]

    @State private var stories: [(String, String)] = []
    @State private var storyList: [AnyView] = []
    @State private var buttonList: [AnyView] = []
    @State private var newbuttonList: [AnyView] = []

    @State private var viewList: [AnyView] = []
    @State private var realviewList: [AnyView] = []
    @State private var numbers: Int = 0
    @State private var startNum: Int = 0
    
    
    var body: some View {
        return NavigationStack {
            VStack{
                FirstPage(answers: $answers, stories: $stories, buttonList: $buttonList, indexes: $indexes, problems: $problems, storyList: $storyList, viewList: $viewList, numbers: $numbers)
            }
        }
    }
}


    //페이지 뷰 - 스토리 파트의 뷰 형식을 정의
struct StoryLine: View {
    var problemIndex: String
    var question: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(problemIndex).font(.largeTitle).fontWeight(.bold)
            Divider().background(Color.black)
            Spacer().frame(height: 40)
            Text(question).font(.title).foregroundColor(.green).fontWeight(.bold)
            Spacer()
        }.padding()
    }
}


//페이지 뷰 - 버튼 파트를 찍어내는 구조체 ButtonsMaker
struct ButtonProto: View {
    var buttonText: String
    var toGo: AnyView


    var body: some View {
            NavigationStack {
                NavigationLink (destination: AnyView(toGo)) {
                    Circle()
                        .stroke(lineWidth: 2)
                        .background(Text(buttonText))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .frame(width: 50, height: 50)
            }
        }
    }
}

struct FirstPage: View {
    @Binding var answers: [String]
    @Binding var stories: [(String, String)]
    @Binding var buttonList: [AnyView]
    @Binding var indexes: [String]
    @Binding var problems: [String]
    @Binding var storyList: [AnyView]
    @Binding var viewList: [AnyView]
    @Binding var numbers: Int

    var body: some View {
        Button(action: {
            makeStory()
            makeButton()
            makePage()
        }){
            Text("문제 생성하기")
        }
        NavigationLink(destination: viewList.first){
            Text("시작")
        }
    }
    
    func makeStory() {
        var tmpStory: [(String, String)] = []

        for i in 0...9 {
            tmpStory.append((indexes[i], problems[i]))
        }
        stories = tmpStory

        for i in 0...9 {
            storyList.append(AnyView(StoryLine(problemIndex: tmpStory[i].0, question: tmpStory[i].1)))
        }
        //스토리 뷰 생성 -> 스토리 뷰 객체들 모아놓는 배열에 넣어준다
    }

    func makeButton() {
        var tmpButton: [(String, AnyView)] = []


        for i in 0..<9 {
            tmpButton.append((answers[i], storyList[i]))
        }

        for i in 0..<9 {
            buttonList.append(AnyView(ButtonProto(buttonText: tmpButton[i].0, toGo: tmpButton[i].1)))
            
        }

    }

    func makePage() {
        var tmpPage: [AnyView] = []

        for _ in 0..<9 {
            tmpPage.append(AnyView(TotalPage(storyList: $storyList, buttonList: $buttonList, viewList: $viewList, numbers: $numbers)))
            numbers += 1
        }
        tmpPage.append(storyList[numbers])
        viewList = tmpPage
        numbers = 0
    }
}

struct TotalPage: View {
    @Binding var storyList: [AnyView]
    @Binding var buttonList: [AnyView]
    @Binding var viewList: [AnyView]
    @Binding var numbers: Int

    var body: some View {
        VStack{
            storyList[numbers]
            buttonList[numbers]
        }
    }
}




    
//     1. 스토리 찍어내기 객체
//     2. 버튼 찍어내는 객체
//     3. 내비게이션 링크로 객체 연결
//
    
    
struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}



    


