//
//  navbar.swift
//  MojitoEats
//
//  Created by judongseok on 2021/04/02.
//
import SwiftUI

struct NavbarView: View {
    var body: some View{
        VStack{
            ZStack(alignment: .center){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("location")
                        .resizable()
                        .frame(width: 17, height: 17, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.trailing, 5)
                    Text("집")
                        .font(.system(size: 18))
                        .foregroundColor(.black)
                    Image(systemName: "chevron.down")
                        .resizable()
                        .frame(width: 15, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(hue: 0.557, saturation: 1.0, brightness: 1.0))
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 23, height: 23, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                })
                .foregroundColor(.black)
                .padding(.leading, UIScreen.main.bounds.size.width * 0.8)
            }
            .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Divider()
        }
    }
}
struct NavbarView_Previews: PreviewProvider {
    static var previews: some View {
        NavbarView()
    }
}
