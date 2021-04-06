//
//  Together.swift
//  MojitoEats (iOS)
//
//  Created by judongseok on 2021/04/06.
//

import SwiftUI

struct TogetherCard: View {
    @State var attempts: Int = 1
    var body: some View{
        ZStack{
            Image("cake")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.8, height: 200, alignment: .center)
                .cornerRadius(10)
            HStack{
                Image(systemName: "deskclock.fill")
                    .resizable()
                    .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("10:00")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .foregroundColor(Color(hue: 0.105, saturation: 0.0, brightness: 0.155))
            .padding(.init(top: -85, leading: 230, bottom: 0, trailing: 0))
            
            Rectangle()
                .frame(width: UIScreen.main.bounds.width * 0.8, height: 50, alignment: .center)
                .padding(.init(top: 150, leading: 0, bottom: 0, trailing: 0))
                .opacity(0.7)
                .foregroundColor(.black)
                .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
            Text("케이크 먹을 사람 2명 구해요~!")
                .font(.system(size: 18))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding(.init(top: 150, leading: 0, bottom: 0, trailing: -90))
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 80, height: 30, alignment: .center)
                    .foregroundColor(.black)
                    .opacity(0.7)
                Image(systemName: "person.fill")
                    .padding(.leading, -30)
                Text("1 / 4")
                    .padding(.leading, 20)
            }
            .foregroundColor(.white)
            .padding(.init(top: -85, leading: -150, bottom: 0, trailing: 0))
            
        }
        .padding(.vertical, 15)
    }
}

struct Together: View {
    var body: some View {
        NavigationView {
            ZStack{
                ScrollView(.vertical, showsIndicators: false, content: {
                    ForEach(0..<5, id: \.self){ index in
                        NavigationLink(destination: Text("asdf")) {
                            TogetherCard()
                        }
                        .buttonStyle(ClearButton(color: Color.white))
                    }
                })
                .padding(.top, 20)
                
                // 주문하러 가기
                ZStack{
                    RoundedRectangle(cornerRadius: 100)
                        .frame(width: UIScreen.main.bounds.width * 0.5, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(red: 0.202, green: 0.691, blue: 1.0))
                    NavigationLink(destination: Text("asd")) {
                            HStack{
                                Image(systemName: "bag.fill")
                                    .resizable()
                                    .frame(width: 17, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding(.trailing, 10)
                                Text("주문하러 가기")
                                    .font(.system(size: 20))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            .foregroundColor(.white)
                    }
                }
                .offset(x: 0, y: 330)
            }
            .navigationBarHidden(true)
        }
        
    }
}

struct Together_Previews: PreviewProvider {
    static var previews: some View {
        Together()
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
