//
//  SwiftUIView.swift
//  MojitoEats
//
//  Created by judongseok on 2021/04/04.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView{
            NavigationLink(
                destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                label: {
                    /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                })
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
