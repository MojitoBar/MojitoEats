//
//  CategorieView.swift
//  MojitoEats
//
//  Created by judongseok on 2021/04/02.
//

import SwiftUI

struct KategorieView: View {
    var foods = ["cake", "coffee", "brunch", "bingsu", "chocolate", "icecream", "cocktail"]
    var body: some View {
        HStack{
            ScrollView (.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(foods, id: \.self){ food in
                        VStack{
                            Image(food)
                                .resizable()
                                .frame(width: 65, height: 65)
                                .clipShape(Circle())
                                .padding(.init(top: 10, leading: 3, bottom: 0, trailing: 3))
                            Text(food)
                                .padding(.bottom, 5)
                        }
                    }
                }
                .padding(.leading, 15)
            }
        }
        Rectangle()
            .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.831))
            .frame(height: 1)
            .edgesIgnoringSafeArea(.horizontal)
    }
}
