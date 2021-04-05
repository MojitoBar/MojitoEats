//
//  OrderContent.swift
//  MojitoEats (iOS)
//
//  Created by judongseok on 2021/04/05.
//

import SwiftUI

struct OrderContent: View {
    @Binding var click : Bool
    var body: some View {
        ScrollView{
            if click{
                Text("과거 주문 내역")
            }
            else{
                Image("board")
                    .resizable()
                    .frame(width: 65, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.top, UIScreen.main.bounds.height * 0.25)
                    .padding(.bottom, 30)
                Button(action: {
                    click = true
                }, label: {
                    Text("과거 주문 내역 보기")
                        .font(.system(size: 15))
                })
                .padding(.init(top: 7, leading: 15, bottom: 7, trailing: 15))
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke()
                        .foregroundColor(.gray)
                )
                .buttonStyle(ClearButton(color: Color.gray))
            }
        }
    }
}
