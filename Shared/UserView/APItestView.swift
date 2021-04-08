//
//  APItestView.swift
//  MojitoEats (iOS)
//
//  Created by judongseok on 2021/04/08.
//

import SwiftUI

struct APItestView: View {
    @State var message: String = "API 호출 중..."
    var body: some View {
        VStack{
            Button(action: {
                request("http://localhost:8080/user/all", "GET") { (success, data) in
                    self.message = data as! String
                }
            }, label: {
                Text("GET API 호출")
                    .padding(.vertical, 10)
                    .frame(width: 200.0)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            })
            Text("\(self.message)")
                .padding(.top, 40.0)
        }
    }
}

struct APItestView_Previews: PreviewProvider {
    static var previews: some View {
        APItestView()
    }
}
