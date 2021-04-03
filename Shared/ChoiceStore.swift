//
//  ChoiceStore.swift
//  MojitoEats
//
//  Created by judongseok on 2021/04/03.
//

import SwiftUI

struct DropDown : View{
    @State var expand = false
    @State var name: String
    var body: some View{
        VStack (alignment: .trailing){
            HStack{
                Text(name)
                    .font(.system(size: 13))
                Image(systemName: expand ? "chevron.up" : "chevron.down").resizable().frame(width: 10, height: 5)
            }.onTapGesture {
                self.expand.toggle()
            }
            .padding(.init(top: 3, leading: 9, bottom: 3, trailing: 9))
            .overlay(
                RoundedRectangle(cornerRadius: 13)
                    .stroke(Color.gray, lineWidth: 1)
            )
            if expand{
                // Some View...
            }
        }
        .animation(.spring())
    }
}

struct TopView: View{
    var body: some View{
        ZStack{
            Rectangle()
                .frame(width: nil, height: 1, alignment: .top)
                .shadow(color: Color.black.opacity(1), radius: 2.0, x: 0.0, y: 0.0)
                // offset
                .offset(y: -(UIScreen.main.bounds.height * 0.328))
            ScrollView (.horizontal, showsIndicators: false){
                HStack{
                    DropDown(name: "추천순")
                        .padding(.leading, 20)
                    DropDown(name: "배달비")
                    DropDown(name: "최소주문")
                    DropDown(name: "할인쿠폰")
                }
            }
            .padding(.init(top: 15, leading: 0, bottom: 15, trailing: 0))
            .background(Color.white)
            .overlay(
                Rectangle()
                    .frame(width: nil, height: 1, alignment: .top)
                    .foregroundColor(Color("CustomGray"))
                , alignment: .top
            )
            // offset
            .offset(y: -(UIScreen.main.bounds.height * 0.356))
        }
    }
}

struct StickyHeader: View{
    var body: some View{
        ScrollView (.horizontal, showsIndicators: false){
            HStack{
                DropDown(name: "추천순")
                    .padding(.leading, 20)
                DropDown(name: "배달비")
                DropDown(name: "최소주문")
                DropDown(name: "할인쿠폰")
            }
        }
        .padding(.init(top: 15, leading: 0, bottom: 15, trailing: 0))
        .background(Color.white)
    }
}

struct Content: View{
    var foods = ["cake", "coffee", "brunch", "bingsu", "chocolate", "icecream", "cocktail"]
    var body: some View{
        VStack{
            ForEach(foods, id: \.self){ food in
                VStack(alignment: .leading){
                    Image(food)
                        .resizable()
                    HStack{
                        Text(food)
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                        Spacer()
                        Text("12-22분")
                            .font(.system(size: 14))
                    }
                    HStack{
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.yellow)
                        Text("4.5(300) · 0.7km · 무료배달")
                            .font(.system(size: 14))
                    }
                    .padding(.init(top: -5, leading: 0, bottom: 0, trailing: 0))
                }
                .frame(width: UIScreen.main.bounds.width * 0.9, height: 250)
                .padding(.init(top: -10, leading: 0, bottom: 20, trailing: 0))
            }
        }
    }
}

struct ChoiceStore: View {
    var body: some View {
        VStack{
            HStack{
                Text("골라먹는 맛집")
                    .font(.system(size: 20))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.173))
                Spacer()
            }
            .padding(.init(top: 15, leading: 25, bottom: -10, trailing: 25))
        }
    }
}

struct ChoiceStore_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceStore()
    }
}
