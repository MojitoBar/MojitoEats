//
//  OrderNavBar.swift
//  MojitoEats (iOS)
//
//  Created by judongseok on 2021/04/05.
//

import SwiftUI

struct OrderNavBar: View {
    @Binding var click: Bool
    let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    @Binding var color : [Color]
    @Binding var width : [CGFloat]
    
    var body: some View {
        HStack{
            Button(action: {
                click = true
            }, label: {
                VStack{
                    Text("과거 주문 내역")
                        .foregroundColor(color[0])
                    Rectangle()
                        .frame(height: width[0], alignment: .bottom)
                        .foregroundColor(color[0])
                }
            })
            .buttonStyle(OrderTopButton())
            Button(action: {
                click = false
            }, label: {
                VStack{
                    Text("준비중")
                        .foregroundColor(color[1])
                    Rectangle()
                        .frame(height: width[1], alignment: .bottom)
                        .foregroundColor(color[1])
                }
            })
            .buttonStyle(OrderTopButton())
        }
        .onReceive(timer, perform: { _ in
            if click{
                color = [Color.black, Color.gray]
                width = [1.5, 1.0]
            }
            else{
                color = [Color.gray, Color.black]
                width = [1.0, 1.5]
            }
        })
    }
}
