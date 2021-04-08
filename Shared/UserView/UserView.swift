//
//  UserView.swift
//  MojitoEats (iOS)
//
//  Created by judongseok on 2021/04/06.
//

import SwiftUI

struct UserView: View {
    @State var settings: [String] = ["배달 주소 관리", "즐겨찾기", "할인쿠폰", "결제관리", "배달파트너 모집", "자주 묻는 질문", "고객 지원", "설정", "공지사항", "약관 · 개인정보 처리방침"]
    
    @State var setImage: [String] = ["text.book.closed", "heart", "tag", "creditcard", "bicycle", "bubble.right", "phone", "gearshape", "megaphone", "newspaper"]
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: UIScreen.main.bounds.width, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            ScrollView{
                VStack (alignment: .leading) {
                    VStack (alignment: .leading){
                        Text("주동석")
                            .font(.system(size: 30))
                            .padding(.init(top: 30, leading: 0, bottom: 3, trailing: 0))
                        Text("010-****-3962")
                            .font(.system(size: 18))
                            .foregroundColor(.init(red: 0, green: 0, blue: 0, opacity: 0.7))
                    }
                    .padding(.init(top: 0, leading: 30, bottom: 25, trailing: 0))
                    Image("UserEvent")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                    ForEach(settings.indices, id: \.self){ index in
                        HStack{
                            Image(systemName: setImage[index])
                                .resizable()
                                .frame(width: 25, height: 25)
                                .padding(.trailing, 20)
                            Button(action: {}, label: {
                                Text(settings[index])
                                    .font(.system(size: 20))
                            })
                            .buttonStyle(ClearButton(color: Color.init(red: 0, green: 0, blue: 0, opacity: 0.9)))
                        }
                        .padding(.init(top: 15, leading: 30, bottom: 20, trailing: 0))
                    }
                }
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
