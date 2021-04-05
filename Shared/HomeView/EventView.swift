//
//  navbar.swift
//  MojitoEats
//
//  Created by judongseok on 2021/04/02.
//
import SwiftUI

struct EventView: View {
    var body: some View{
        VStack{
            Rectangle()
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.065, brightness: 0.485)/*@END_MENU_TOKEN@*/)
                .frame(height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}
struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}
