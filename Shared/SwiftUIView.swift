//
//  SwiftUIView.swift
//  MojitoEats
//
//  Created by judongseok on 2021/04/04.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        LazyVGrid(columns: /*@START_MENU_TOKEN@*/[GridItem(.fixed(20))]/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, pinnedViews: [.sectionHeaders], content: {
            Section{
                Text("asdf")
            }
        })
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
