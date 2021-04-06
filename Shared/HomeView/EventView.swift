//
//  navbar.swift
//  MojitoEats
//
//  Created by judongseok on 2021/04/02.
//
import SwiftUI

struct EventView: View {
    private var numberOfImages = 5
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    func previous() {
        withAnimation{
            currentIndex = currentIndex > 0 ? currentIndex - 1 : numberOfImages - 1
        }
    }
    
    func next() {
        withAnimation{
            currentIndex = currentIndex < numberOfImages - 1 ? currentIndex + 1 : 0
            // set the page to be next image
        }
    }
    
    @State private var currentIndex = 0
    var body: some View{
        VStack{
            GeometryReader { proxy in
                ZStack{
                    TabView(selection: $currentIndex){
                        ForEach(0..<numberOfImages) { num in
                            Text("\(num + 1)번째 페이지")
                        }
                    }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .background(Color.orange)
                    .onReceive(timer, perform: { _ in
                        next()
                    })
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width: 150, height: 30, alignment: .center)
                        .opacity(0.7)
                        .overlay(
                            HStack{
                                Text("\(currentIndex + 1)")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .padding(.trailing, -5)
                                Text("/ \(numberOfImages)  |")
                                    .foregroundColor(.white)
                                    .opacity(0.6)
                                Text("전체보기")
                                    .foregroundColor(.white)
                            }
                            .font(.system(size: 15))
                            .padding(.leading, -25)
                        )
                        .offset(x: UIScreen.main.bounds.width * 0.38, y: UIScreen.main.bounds.height * 0.065)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
        .frame(height: 160)
    }
}
struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}
