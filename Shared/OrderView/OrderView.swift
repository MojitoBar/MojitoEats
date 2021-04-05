//
//  OrderView.swift
//  MojitoEats (iOS)
//
//  Created by judongseok on 2021/04/05.
//

import SwiftUI

struct OrderTopButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: UIScreen.main.bounds.width / 2, height: 80)
            .foregroundColor(Color.gray)
            .padding(-4)
    }
}
struct OrderView: View {
    @State var click = false
    @State var color : [Color] = [Color.gray, Color.black]
    @State var width : [CGFloat] = [1.0, 1.5]
    
    var body: some View{
        VStack{
            OrderNavBar(click: $click, color: $color, width: $width)
            OrderContent(click: $click)
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
