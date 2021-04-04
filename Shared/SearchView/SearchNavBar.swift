//
//  SearchNavBar.swift
//  MojitoEats
//
//  Created by judongseok on 2021/04/04.
//

import SwiftUI

struct ClearButton: ButtonStyle {
    @State var color: Color
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(color)
    }
}

struct SearchHeader: View {
    var body: some View{
        ZStack{
            ZStack {
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: UIScreen.main.bounds.width * 0.75, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("CustomGray"))
                Button(action: {}, label: {
                    Text("검색어를 입력하세요.")
                        .frame(width: UIScreen.main.bounds.width * 0.65)
                        .font(.system(size: 22, weight: .heavy, design: .default))
                        .padding(.leading, -90)
                })
                .buttonStyle(ClearButton(color: Color.gray))
            }
            .padding(.leading, -50)
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 23, height: 23, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.leading, UIScreen.main.bounds.size.width * 0.8)
        }
        .frame(width: UIScreen.main.bounds.width * 0.9, height: 40)
        .padding(.top, 5)
    }
}

struct SearchCardView: View {
    @State var name: String
    @State var image: String
    var body: some View{
        VStack{
            Image(image)
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text(name)
        }
        .padding(.bottom, 10)
    }
}

struct SearchNavBar: View {
    var foods = ["cake", "coffee", "brunch", "bingsu", "chocolate", "icecream", "cocktail"]
    private var columns: [GridItem] = [
        GridItem(.fixed(100), spacing: 90),
        GridItem(.fixed(100), spacing: 90)
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, pinnedViews: [.sectionHeaders], content: {
                ForEach(foods, id: \.self) { index in
                    SearchCardView(name: index, image: index)
                }
            })
            .padding(.top, 15)
        }
    }
}

struct SearchNavBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchNavBar()
    }
}
