//
//  PopularView.swift
//  MojitoEats
//
//  Created by judongseok on 2021/04/02.
//

import SwiftUI

struct PopularView: View {
    var foods = ["cake", "coffee", "brunch", "bingsu", "chocolate", "icecream", "cocktail"]
    var body: some View {
        VStack{
            HStack{
                Text("인기 프랜차이즈")
                    .font(.system(size: 20))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.173))
                Spacer()
                Image(systemName: "arrow.right")
                    .resizable()
                    .frame(width: 20, height: 15)
            }
            .padding(.init(top: 15, leading: 25, bottom: 0, trailing: 25))
            ScrollView (.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(foods, id: \.self){ food in
                        NavigationLink(destination: Text("asdf"), label: {
                            VStack(alignment: .leading){
                                Image(food)
                                    .resizable()
                                    .frame(width: 140, height: 140)
                                    .padding(.init(top: 0, leading: -8, bottom: 0, trailing: 3))
                                Text(food)
                                    .font(.system(size: 18))
                                    .fontWeight(.medium)
                                    .padding(.init(top: 0, leading: -7, bottom: 0, trailing: 0))
                                HStack{
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .foregroundColor(.yellow)
                                    Text("4.5(300) · 0.7km")
                                        .font(.system(size: 14))
                                        .padding(.init(top: 0, leading: -5, bottom: 0, trailing: 0))
                                }
                                .padding(.init(top: -5, leading: -8, bottom: 0, trailing: 3))
                                
                                Text("무료배달")
                                    .font(.system(size: 14))
                                    .padding(.leading, -6)
                            }
                            .padding(.leading, 8)
                            .navigationBarBackButtonHidden(true)
                        })
                        .buttonStyle(ClearButton(color: Color.black))
                    }
                    VStack{
                        Circle()
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: 3, x: 0.0, y: 0.0)
                            .overlay(
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .frame(width: 30, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.173))
                            )
                        Text("더보기")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.173))
                            .font(.system(size: 15))
                    }
                    .padding(.init(top: 0, leading: 50, bottom: 0, trailing: 40))
                }
                .padding(.leading, 23)
            }
            Rectangle()
                .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.931))
                .frame(height: 10)
                .edgesIgnoringSafeArea(.horizontal)
                .padding(.init(top: 13, leading: 0, bottom: 0, trailing: 0))
        }
    }
}


struct PopularView_Previews: PreviewProvider {
    static var previews: some View {
        PopularView()
    }
}

